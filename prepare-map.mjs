import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync,readdirSync,statSync,copyFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:64e6,stdio:['ignore','pipe','pipe']});
assert.equal(run('calcit',['-v']).trim(),'0.30.1');run('calcit',['docs','agents','--contract']);
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):k==='schema'&&Array.isArray(x)&&x[0]==='{}'?['{}',...x.slice(1).map(norm).sort((a,b)=>a[0].localeCompare(b[0]))]:norm(x)])):v;
const q=(...args)=>{const r=JSON.parse(run('calcit',['query',...args,'--format','json']));assert.deepEqual(r.diagnostics||[],[]);return norm(r.data);};
const p=JSON.parse(readFileSync('reviewed-source.json')),expected=structuredClone(p.before);assert.equal(p.sites.length,14);assert.equal(p.before.defs.length,80);assert.equal(p.before.namespaces.length,15);
for(const s of p.sites){assert.equal(s.region,'code');let n=expected.defs.find(d=>d.id===s.definition).code;for(const i of s.path.split('.').map(Number))n=n[i];assert.deepEqual(n,s.before);assert.equal(n[0],'merge');n[0]='.merge';}
const views=()=>{const namespaces=[],defs=[];for(const ns of q('ns').namespaces){const info=q('ns',ns);namespaces.push(info);const names=run('calcit',['query','defs',ns]).split('\n').filter(x=>/^  \S/.test(x)).map(x=>x.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const n of names)defs.push(q('def',ns+'/'+n));}return {config:q('config'),namespaces,defs};};
const blob=()=>run('git',['hash-object','calcit.cirru']).trim(),guard=()=>{for(const[f,h]of Object.entries(p.ordinaryBlobs))assert.equal(run('git',['hash-object',f]).trim(),h,f);};
mkdirSync('acceptance',{recursive:true});assert.equal(blob(),p.blob);guard();assert.deepEqual(views(),norm(p.before));writeFileSync('acceptance/before-source.json',JSON.stringify(views()));
assert.ok(!p.before.defs.some(d=>d.id.endsWith('/merge')));assert.ok(!JSON.stringify(p.before.namespaces).includes('"merge"'));
const countMergeLeaves=n=>Array.isArray(n)?n.reduce((sum,x)=>sum+countMergeLeaves(x),0):n==='merge'?1:0;
assert.equal(p.before.defs.reduce((sum,d)=>sum+countMergeLeaves(d.code),0),14,'No extra merge binding or symbol outside the 14 reviewed calls');
const mapSchema=['::',"'Map","'Tag","'Dynamic"],evidence=[];
for(const [i,s]of p.sites.entries()){
  const show=JSON.parse(run('calcit',['tree','show',s.definition,'--path','@'+s.path,'--format','json']));assert.deepEqual(show.tree,s.before);writeFileSync('acceptance/subtree-'+i+'.json',JSON.stringify(show));
  const receiver=s.before[1];
  if(typeof receiver==='string'&&receiver.startsWith('ui/')){
    const ns=p.before.namespaces.find(n=>n.namespace===s.definition.split('/')[0]);assert.ok(ns.ns_code[2].some(x=>Array.isArray(x)&&JSON.stringify(x)===JSON.stringify(['respo-ui.core',':as','ui'])));
    const producer=q('def','respo-ui.core/'+receiver.slice(3));assert.deepEqual(producer.schema,mapSchema);assert.equal(producer.code[0],'def');evidence.push({index:i,kind:'published-ui-map',producer});
  }else if(Array.isArray(receiver)&&receiver[0]===':extra'){
    const contract={db:'Database',session:'Session',user:'User'}[receiver[1]];assert.ok(contract);
    const producer=p.before.defs.find(d=>d.id==='app.schema/'+contract);assert.equal(producer.code[0],'defstruct');assert.deepEqual(producer.code.find(x=>Array.isArray(x)&&x[0]===':extra'),[':extra',mapSchema]);evidence.push({index:i,kind:'existing-struct-map-field',producer:producer.id,field:':extra',schema:mapSchema});
  }else if(receiver==='database'){
    assert.equal(s.definition,'app.schema/decode-database');const producer=p.before.defs.find(d=>d.id==='app.schema/database');assert.deepEqual(producer.schema,mapSchema);assert.equal(producer.code[2][0],'{}');evidence.push({index:i,kind:'existing-map-definition',producer});
  }else{
    assert.equal(receiver,'base-data');assert.equal(s.definition,'app.twig.container/twig-container');const d=p.before.defs.find(d=>d.id===s.definition);const producer=d.code[3][1].find(x=>x[0]==='base-data');assert.equal(producer[1][0],'{}');evidence.push({index:i,kind:'existing-local-map-literal',producer});
  }
}
assert.equal(evidence.length,14);writeFileSync('acceptance/receivers.json',JSON.stringify(evidence));
const mapType=q('type',":: 'Map 'Tag 'Dynamic"),method=mapType.methods.find(m=>m.name==='.merge');assert.equal(method.status,'open');assert.equal(method.definition,'calcit.core/merge');assert.equal(method.rest_type,'map<tag, dynamic>');assert.equal(method.return_type,'map<tag, dynamic>');writeFileSync('acceptance/map-type.json',JSON.stringify(mapType));writeFileSync('acceptance/merge-producer.json',JSON.stringify(q('def','calcit.core/merge')));
function gate(phase){
  const original=blob(),log=(name,args)=>{try{const text=run('calcit',args);writeFileSync('acceptance/'+phase+'-'+name,text);return text;}catch(e){writeFileSync('acceptance/'+phase+'-'+name,e.stdout||'');writeFileSync('acceptance/'+phase+'-'+name+'.stderr',e.stderr||'');throw e;}};
  const canonical=JSON.parse(log('canonical.json',['edit','transaction','--code','[["edit","format"]]','--dry-run','--format','json']));assert.equal(canonical.changed,false);
  const strict=JSON.parse(log('strict.json',['fix','--workflow','strict','--verify','--format','json']));assert.equal(strict.data.workflow.status,'passed');assert.deepEqual(strict.diagnostics,[]);
  log('browser-entry.log',['--check-only']);log('server-entry.log',['--entry','server','--check-only']);
  const browser=['app.$meta','app.client','app.comp.container','app.comp.login','app.comp.navigation','app.comp.profile','app.config','app.schema'];
  const server=['app.$meta','app.config','app.schema','app.server','app.twig.container','app.twig.user','app.updater','app.updater.router','app.updater.session','app.updater.user'];
  log('browser.json',['--check-only',...browser.flatMap(n=>['--ns',n]),'--summary-only','--format','json']);log('server.json',['--entry','server','--check-only',...server.flatMap(n=>['--ns',n]),'--summary-only','--format','json']);
  const native=JSON.parse(log('native.json',['--entry','server','test','--require-match','--summary-only','--format','json']));for(const k of ['selected','executed','passed'])assert.equal(native[k],4);assert.equal(native.failed,0);
  process.env.CALCIT_BIN=run('which',['calcit']).trim();writeFileSync('acceptance/'+phase+'-shared.log',run('node',['.calcit/core-test-tools/scripts/run-core-tests.mjs','--snapshot','calcit.cirru','--entry','default','--target','app.comp.login/read-login-state','--target','app.schema','--backend','native,js','--exclusions','.calcit/core-test-tools/scripts/core-tests-exclusions.cirru','--support-matrix','.calcit/core-test-tools/docs/installation/wasm-support.md','--results-json','acceptance/'+phase+'-shared.json']));
  const shared=JSON.parse(readFileSync('acceptance/'+phase+'-shared.json'));assert.equal(Object.keys(shared).length,3);for(const row of Object.values(shared))for(const backend of ['native','js'])assert.equal(row[backend].status,'pass');
  process.env.VITE_BASE_URL='./';writeFileSync('acceptance/'+phase+'-compile.log',run('yarn',['compile-page']));writeFileSync('acceptance/'+phase+'-build.log',run('yarn',['release-page']));
  const files=[];function visit(dir){for(const n of readdirSync(dir).sort()){const f=dir+'/'+n;if(statSync(f).isDirectory())visit(f);else if(f.endsWith('.mjs'))files.push({path:f,sha256:createHash('sha256').update(readFileSync(f)).digest('hex')});}}visit('js-out');writeFileSync('acceptance/'+phase+'-js.json',JSON.stringify(files));
  if(phase==='after')assert.deepEqual(files,JSON.parse(readFileSync('acceptance/before-js.json')),'All emitted browser modules must remain byte-identical');guard();assert.equal(blob(),original);
}
gate('before');assert.deepEqual(views(),norm(p.before));guard();assert.equal(blob(),p.blob);
const operations=p.sites.map(s=>['tree','replace',s.definition,'--path','@'+s.path+'.0','--input-format','json-ast','--code',JSON.stringify('.merge')]);writeFileSync('acceptance/operations.json',JSON.stringify(operations));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'],preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);assert.equal(blob(),p.blob);writeFileSync('acceptance/preview.json',JSON.stringify(preview));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));
const after=views();writeFileSync('acceptance/after-source.json',JSON.stringify(after));assert.deepEqual(after,norm(expected));guard();gate('after');assert.deepEqual(views(),norm(expected));guard();
writeFileSync('acceptance/expected-source.json',JSON.stringify(norm(expected)));writeFileSync('acceptance/summary.json',JSON.stringify({repo:p.repo,base:p.base,beforeBlob:p.blob,afterBlob:blob(),operations:14,changedDefinitions:10,definitions:80,namespaces:15,nativeTestsBeforeAndAfter:4,sharedNativeBeforeAndAfter:3,sharedJsBeforeAndAfter:3,ordinaryFilesPreserved:Object.keys(p.ordinaryBlobs).length,limits:'Map receiver is real but heterogeneous Dynamic remains open, not a closed proof. Browser emitted bytes only; no native service, account/storage, production or backend-equivalence acceptance.'}));
mkdirSync('prepared-source',{recursive:true});copyFileSync('calcit.cirru','prepared-source/calcit.cirru');
