import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync,mkdirSync,readdirSync,statSync,copyFileSync} from 'node:fs';
import {createHash} from 'node:crypto';
assert.equal(process.env.GITHUB_ACTIONS,'true');assert.equal(process.platform,'linux');
const run=(exe,args)=>execFileSync(exe,args,{encoding:'utf8',maxBuffer:64e6,stdio:['pipe','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):k==='schema'&&Array.isArray(x)&&x[0]==='{}'?['{}',...x.slice(1).map(norm).sort((a,b)=>a[0].localeCompare(b[0]))]:norm(x)])):v;
const q=(...args)=>{const r=JSON.parse(run('calcit',['query',...args,'--format','json']));assert.deepEqual(r.diagnostics||[],[]);return norm(r.data);};
assert.equal(run('calcit',['-v']).trim(),'0.30.1');const p=JSON.parse(readFileSync('reviewed-source.json')),expected=structuredClone(p.before),mode=process.argv[2],phase=process.argv[3];mkdirSync('acceptance',{recursive:true});assert.equal(p.sites.length,7);
for(const s of p.sites){assert.equal(s.head,'count');const d=expected.defs.find(d=>d.id===s.definition);let n=s.region==='test'?d.tests[s.testIndex].code:d.code;for(const i of s.path.split('.').map(Number))n=n[i];assert.deepEqual(n,s.before);n[0]='.len';}
const views=()=>{const namespaces=[],defs=[];for(const ns of q('ns').namespaces){const info=q('ns',ns);namespaces.push(info);const names=run('calcit',['query','defs',ns]).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);assert.equal(names.length,info.definition_count);for(const n of names)defs.push(q('def',ns+'/'+n));}return {config:q('config'),namespaces,defs};};
const blob=()=>run('git',['hash-object','calcit.cirru']).trim(),guard=()=>{for(const[f,h]of Object.entries(p.ordinaryBlobs))assert.equal(run('git',['hash-object',f]).trim(),h,f);};
if(mode==='before'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));guard();
 assert.ok(!p.before.defs.some(d=>d.id.endsWith('/count')));assert.ok(!JSON.stringify(p.before.namespaces).includes('"count"'));
 let count=0;const walk=n=>{if(Array.isArray(n)){if([';','quote','defmacro'].includes(n[0]))return;if(n[0]==='count')count++;n.forEach(walk);}};for(const d of p.before.defs){walk(d.code);d.tests.forEach(t=>walk(t.code));d.examples.forEach(e=>walk(e));}assert.equal(count,7);
 for(const[i,s]of p.sites.entries())if(s.region==='code'){
  writeFileSync('acceptance/before-subtree-'+i+'.json',run('calcit',['tree','show',s.definition,'--path','@'+s.path,'--format','json']));
  const args=['query','type-at',s.definition,'--path','@'+s.path+'.1','--format','json'];if(s.definition.startsWith('app.twig.'))args.unshift('--entry','server');
  const t=JSON.parse(run('calcit',args));writeFileSync('acceptance/type-'+i+'.json',JSON.stringify(t));assert.deepEqual(t.diagnostics||[],[]);const m=t.data.static_methods.find(m=>m.name==='.len');assert.equal(m.status,'proven');assert.ok(['calcit.core/&list:count','calcit.core/&map:count'].includes(m.definition));assert.equal(m.call_types.returns,"'Number");assert.deepEqual(m.parameter_types,[]);assert.equal(m.rest_type,null);
 }
 writeFileSync('acceptance/before-source.json',JSON.stringify(views()));
}else if(mode==='apply'){
 assert.equal(blob(),p.blob);assert.deepEqual(views(),norm(p.before));guard();
 const operations=p.sites.filter(s=>s.region==='code').map(s=>['tree','replace',s.definition,'--path','@'+s.path+'.0','--input-format','json-ast','--code',JSON.stringify('.len')]);
 const seen=new Set();for(const s of p.sites.filter(s=>s.region==='test')){const key=s.definition+'#'+s.testIndex;if(seen.has(key))continue;seen.add(key);const t=expected.defs.find(d=>d.id===s.definition).tests[s.testIndex];assert.equal(t.name,s.testName);const op=['edit','add-test',s.definition,t.name,'--overwrite','--input-format','json-ast','--code',JSON.stringify(t.code)];if(t.tags.length)op.push('--tags',t.tags.join(','));operations.push(op);}assert.equal(operations.length,4);
 writeFileSync('acceptance/operations.json',JSON.stringify(operations));const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];const preview=JSON.parse(run('calcit',[...args,'--dry-run']));assert.ok(preview.scoped_revision);assert.equal(blob(),p.blob);writeFileSync('acceptance/preview.json',JSON.stringify(preview));writeFileSync('acceptance/applied.json',run('calcit',[...args,'--expect-revision',preview.scoped_revision]));writeFileSync('acceptance/modified-blob.txt',blob());assert.deepEqual(views(),norm(expected));guard();writeFileSync('acceptance/expected-source.json',JSON.stringify(norm(expected)));
}else if(mode==='after'){
 assert.deepEqual(views(),norm(expected));assert.equal(blob(),readFileSync('acceptance/modified-blob.txt','utf8'));guard();writeFileSync('acceptance/after-source.json',JSON.stringify(views()));
}else if(mode==='gates'){
 assert.ok(['before','after'].includes(phase));const source=blob();
 const log=(name,args)=>{const file='acceptance/'+phase+'-'+name;try{writeFileSync(file,run('calcit',args));}catch(e){writeFileSync(file,e.stdout||'');writeFileSync(file+'.stderr',e.stderr||'');throw Error('Required gate failed: '+file+' exit '+e.status);}};
 run('calcit',['edit','format']);assert.equal(blob(),source);log('strict.json',['fix','--workflow','strict','--verify','--format','json']);const strict=JSON.parse(readFileSync('acceptance/'+phase+'-strict.json'));assert.equal(strict.data.workflow.status,'passed');assert.deepEqual(strict.diagnostics,[]);
 log('browser-entry.log',['--check-only']);log('server-entry.log',['--entry','server','--check-only']);
 const browser=['app.$meta','app.client','app.comp.container','app.comp.login','app.comp.navigation','app.comp.profile','app.config','app.schema'];
 const server=['app.$meta','app.config','app.schema','app.server','app.twig.container','app.twig.user','app.updater','app.updater.router','app.updater.session','app.updater.user'];
 log('browser.json',['--check-only',...browser.flatMap(n=>['--ns',n]),'--summary-only','--format','json']);log('server.json',['--entry','server','--check-only',...server.flatMap(n=>['--ns',n]),'--summary-only','--format','json']);log('native.json',['--entry','server','test','--require-match','--summary-only','--format','json']);
 process.env.CALCIT_BIN=run('which',['calcit']).trim();writeFileSync('acceptance/'+phase+'-shared.log',run('node',['.calcit/core-test-tools/scripts/run-core-tests.mjs','--snapshot','calcit.cirru','--entry','default','--target','app.comp.login/read-login-state','--target','app.schema','--backend','native,js','--exclusions','.calcit/core-test-tools/scripts/core-tests-exclusions.cirru','--support-matrix','.calcit/core-test-tools/docs/installation/wasm-support.md','--results-json','acceptance/'+phase+'-shared.json']));
 process.env.VITE_BASE_URL='./';writeFileSync('acceptance/'+phase+'-compile.log',run('yarn',['compile-page']));writeFileSync('acceptance/'+phase+'-build.log',run('yarn',['release-page']));
 const files=[];function visit(dir){for(const n of readdirSync(dir).sort()){const f=dir+'/'+n;if(statSync(f).isDirectory())visit(f);else if(f.endsWith('.mjs'))files.push({path:f,sha256:createHash('sha256').update(readFileSync(f)).digest('hex')});}}visit('js-out');writeFileSync('acceptance/'+phase+'-js.json',JSON.stringify(files));
 if(phase==='before')for(const f of files){const dest='/tmp/doctalk-length-before/'+f.path;mkdirSync(dest.slice(0,dest.lastIndexOf('/')),{recursive:true});copyFileSync(f.path,dest);}
 else{const before=JSON.parse(readFileSync('acceptance/before-js.json')),a=new Map(files.map(f=>[f.path,f.sha256])),b=new Map(before.map(f=>[f.path,f.sha256])),changed=[...new Set([...a.keys(),...b.keys()])].filter(f=>a.get(f)!==b.get(f));let diff='';for(const f of changed){try{run('diff',['-u','--label','before/'+f,'--label','after/'+f,b.has(f)?'/tmp/doctalk-length-before/'+f:'/dev/null',a.has(f)?f:'/dev/null']);}catch(e){assert.equal(e.status,1);diff+=e.stdout;}}writeFileSync('acceptance/generated-js.diff',diff);writeFileSync('acceptance/generated-js.json',JSON.stringify({before:before.length,after:files.length,changed}));}
 guard();assert.equal(blob(),source);
}else throw Error('invalid mode');
