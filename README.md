
DOC TALK
----

> TODO

### Usages

TODO

### Workflow

https://github.com/Cumulo/calcium-workflow

当前迁移候选精确配对正式 Calcit / `@calcit/procs` 0.30.1、
Caps 0.1.1、Node 24、Yarn 4.18.0。模块改用已共同验收的精确正式依赖图，不使用 hash、浮动 main
或旧 Respo/UI alpha；未被任何应用代码或 namespace import 消费的 Lilac 已移除。
Yarn 原配置与依赖隔离保持不变，未添加白名单或降低安全设置。
**未经后端环境验收，不应合并部署。**

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn check-client
yarn check-server
calcit calcit.cirru --entry server test --require-match --summary-only
calcit fix --workflow strict --verify --format edn
yarn compile-page
VITE_BASE_URL=https://cos-sh.tiye.me/TopixIM/doctalk/ yarn release-page
```

COS 仅上传 `dist/` 前端资源，使用 `cos-upload-action@v1.2.0` 的 `public-base-url` 内置验证，
不再另外复制上传/CDN 校验脚本。生产前缀为 `TopixIM/doctalk/`；同仓库 PR 使用
`TopixIM/doctalk/pr/<PR>/<run>/<attempt>/` 隔离预览，外部 PR 只检查和构建。
需配置 `COS_BUCKET`、`COS_SECRET_ID`、`COS_SECRET_KEY`。

原 web rsync 路径 `/web-assets/repo/TopixIM/doctalk` 与服务器 `/servers/paste-sharing/` 保持不变，
服务器快照和脚本仍经 rsync 部署，不进入 COS；rsync 使用原 `rsync_private_key`。
部署按 production / PR 串行排队，不取消正在上传的任务；生产上传前只检查一次 main SHA，
过期提交跳过全部部署。这不是原子发布保证。

CI 保留现有 strict workflow 检查，并按 browser/native 两个入口检查全部公开定义。
生成的 `js-out/`、`dist/`、`dist-server/` 和旧 `compact.cirru` / `package.cirru` 不进入仓库。

### 本轮集合方法清理

七处集合 `count` 改为 `.len`：凭据 List 长度、Reel 记录数、会话 Map 数量，
以及原账户/session 生命周期测试中的四处集合断言。原参数、断言、标签、公开 schema、
HUD、端口、协议和存档不变；不重构认证或改变 `/servers/paste-sharing/` 部署路径。

官方正式 0.30.1 的[准备 CI](https://github.com/TopixIM/doctalk/actions/runs/40238809764)
通过前后完整 strict、原双入口及全部自有 namespace 检查（browser 50/server 55，联合覆盖全部 80 定义）、
原生 4/4、现有登录/数据合同 native/JS 各 3/3、immutable 安装和完整前端构建。
成功 ZIP 先校验 SHA256，再对照全部 80 定义/15 namespace 的独立原/预期/新视图和实际产物；
174 个浏览器生成模块前后字节相同。这不证明 native 服务运行、账户/存储或浏览器端到端验收。

依赖和 lock 不变，不新增测试框架、常驻检查或基线例外。原规范化门禁改用格式化前后 blob
哈希相等检查，保留所有原门禁；临时迁移 CI、事务脚本和生成代码不入库。
其余 `merge` 仅为扫描候选，不据名字机械改写，也不声称整个项目已无待评估写法。
不合并或生产部署；后端环境、备份/回滚和前后端协同上线要求仍有效。

### 前次正式版迁移

六处 `option:unwrap-or`、一处 `option:map` 和一处 `result:unwrap-or` 改用对应方法；
五处 Tag `case-default` 改为字面量 `match`，保留分支顺序并将原默认处理置于末尾 `_`。
输入、默认值、未知消息、端口解析、网络及存档格式不变，公开 schema、原测试、HUD 与配置不变。
九个模块配对兼容的精确正式 tag，原 std/WSS 不变；Memof 无根源码直接调用，不声称已验收其新 API。
当时原工作流与 Yarn 配置完全不变，不新增维护脚本、测试框架或基线例外。

本次官方 Linux 正式图已通过完整 strict（0 诊断）、原两目标 namespace 检查、原生 4/4、
原登录状态与数据合同 native 3/3、JS 3/3（无排除）、immutable 安装及完整构建。
成功产物先验证 SHA256，再核对原/新 blob 与 80 个定义/15 namespace 的完整结构化视图；
仅导入十三处期望调用改写，临时准备 CI、事务和回放文件不进入最终 PR。

本次没有重验真实 WebSocket、账户/localStorage、退出保存或冷启动；下面 alpha 阶段的
合成账户验收仅为历史证据，不能替代本次正式图验收。原 `/servers/paste-sharing/`、
后端环境、存档备份/回滚和前后端协同上线限制继续保留；未合并或部署。

### 先前 alpha 迁移基线与当前限制

未改源码的 0.27.0 基线在原有只读模块图下通过 browser216/216、native53/53，
配对 JS 生成与 Vite 构建通过。原仓库没有定义附带测试，不能把零测试视为回归通过。
旧模块源码 HEAD/干净状态已对照原解析记录核实；本地未运行 Caps，也不把旧 native realization
当作新工具链的干净安装验收。

站点配置、登录/容器本地状态及服务端 User / Session / Database / Credentials 已改为真实 Struct，
内部操作使用 ServerOp；原配置值、存储文件、Map 状态、用户名/密码 List 和 WebSocket envelope
保持不变。存档解码与编码保留未知扩展字段，内部 Option 在原协议中仍编码为 nil；缺失的可选
字段会规范化为 nil，错误字段类型会拒绝，而不是继续以未检查的值运行。网络 patch 使用 Recollect 自带 `decode-changes` 重新建立
EDN 往返后的名义类型，不再强转；未知消息仍忽略。游客缺失的计数/颜色在视图中明确使用 Option，
Respo 游标保留合法的混合键，不伪装成纯 Tag Map。

已规范7处会导致 JS 导入时立即调用的顶层定义；门禁缺口见
[Calcit #2166](https://github.com/calcit-lang/calcit/issues/2166)。现有 imports 不作多余改写；
build-errors 路径对齐生成器实际输出的 `.mjs`，watcher 使用带 `!` 的当前接口。

当前 browser252/252、native72/72 可达定义及全部自有前端/服务端 namespace（分别50/50、55/55
定义，含共享定义）通过；完整 strict 为0诊断、0迁移建议。4条定义附带 native 回归覆盖状态解码、
旧存档往返、账户/session操作和真实 Reel 历史回放；没有新增测试框架或维护独立验证脚本。
配对 JS 生成、Vite 构建，以及实际生成代码的视图/输入/序列化 patch 回放通过。
临时 Node 回放使用现有 Vite 打包浏览器依赖，不声称原始浏览器模块可直接由 Node 加载；也不是
完整浏览器端到端或生产验收。另经用户批准，在隔离临时存档与仅回环绑定的原生服务上，实际通过
浏览器 WebSocket 验收唯一合成账户的注册、Unicode 个人页、刷新自动登录、退出后刷新仍为访客、
同账户重新登录，以及服务退出保存存档、重启后自动登录。仅使用 `http://127.0.0.1:13557` 的应用
localStorage，没有保存到浏览器密码管理器或使用生产数据；该局部账户闭环不等于生产环境验收。
临时服务验收后停止，合成存档留在指定隔离目录。当前生成的 JS
另通过存档往返、已解码 Credentials 的再次回放和错误存档拒绝。临时入口、产物及脚本均不纳入仓库。

Reel 按 Database 实例化；回放边界检查操作、sid/id/time，并兼容旧匿名操作与已解码的凭据 Struct。
所有自有 unsafe-coerce / assert-type 已移除，旧 atom/watch/Option 构造写法已迁移；不把依赖内部
计入此结论。弱类型扫描仍有32个定义的42处 schema Dynamic（包括存档/网络边界、扩展字段、
异构 UI 状态、Reel 历史和模块接口）；unresolved type slot 与 unsafe-coerce 均为0。未放宽任何
基线或声称 Dynamic 债务清零。原 md5 认证和密码输入行为未在这次类型迁移中重设计。

浏览器 URL 解析改用已有 js-ffi 标准接口，正常、空值、重复参数和 Unicode 共9例与原库相符；
畸形 URL 编码按浏览器标准处理，可能与旧库静默丢弃参数的行为不同。未使用的 shortid / url-parse
及其间接依赖已删除。未启动业务后端、合并或部署生产；本地没有执行 Caps，干净依赖安装由 CI 验证。

### License

MIT
