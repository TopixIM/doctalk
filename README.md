
DOC TALK
----

> TODO

### Usages

TODO

### Workflow

https://github.com/Cumulo/calcium-workflow

当前本地迁移候选固定已发布的 Calcit / `@calcit/procs` 0.30.1-alpha.4（预发布）、
Caps 0.1.1、Node 24、Yarn 4.18.0。模块改用已共同验收的精确正式依赖图，不使用 hash、浮动 main
或旧 Respo/UI alpha；未被任何应用代码或 namespace import 消费的 Lilac 已移除。
**源码迁移尚未完成，当前候选不能部署。** alpha.5 的发布链路已完成；本候选仍保留已验收的
alpha.4 配对，下一阶段再单独验证新 CLI / runtime，不单边更新。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn check-client
yarn check-server
calcit calcit.cirru test --require-match --summary-only
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

### 迁移基线与当前限制

未改源码的 0.27.0 基线在原有只读模块图下通过 browser216/216、native53/53，
配对 JS 生成与 Vite 构建通过。原仓库没有定义附带测试，不能把零测试视为回归通过。
旧模块源码 HEAD/干净状态已对照原解析记录核实；本地未运行 Caps，也不把旧 native realization
当作新工具链的干净安装验收。

新图的首轮检查实际失败：browser237通过、2失败、8阻塞、3级联；native58通过、1失败、
11阻塞、3级联。旧 Map 读取的 Option 结果仍流入登录状态、路由、用户名/密码比较和存档路径，
并存在旧 `some?` 等写法，后续必须按真实数据边界迁移，不批量 unwrap、加断言或放宽门禁。
以上是首轮结果，不是当前迁移已完成的声明。

第二阶段已把六字段站点配置改为具名 Struct，同步10处读取；端口5021、标题、图标、主题、
`workflow-storage-calcit` 和 `storage.cirru` 全部保留。六个原值已在 native 和生成 JS 中实际执行验收。
登录视图显式区分缺失/空状态与已有状态，解码为真实 `LoginState`；对外仍发送原 Map 状态和
用户名/密码 List，不改变 localStorage key、注册/登录操作或 WebSocket 数据格式。

新增一条定义附带回归覆盖缺失、nil 和已有 Unicode 凭据，native1/1通过；同一测试 AST 在生成
JS 中执行通过。临时 Node 回放还实际调用了两种输入处理器及注册/登录回调，确认更新一个字段
保留另一个字段、状态仍为 Map、凭据仍为 List。localStorage 在该回放中是内存替身，**不是浏览器
端到端或真实后端验收**；临时入口/脚本不纳入仓库。

实际 JS 加载还发现7处顶层 `defn` 额外包装，会变成导入时的立即调用；已通过官方事务规范，
并逐项确认 schema/tests/doc/FFI 元数据未丢失。相关门禁缺口与两个纯函数的独立复现已向
[Calcit #2166](https://github.com/calcit-lang/calcit/issues/2166) 汇报；不增加编译器硬编码迁移规则。
现有 imports 已是正确的无 `[]` 写法，不为形式统一作多余改动。

当前 config/schema/login/navigation 四个 namespace 门禁15/15通过、零诊断，但全量入口仍失败：
browser242通过、0独立失败、8阻塞、2级联；native60通过、1失败、9阻塞、3级联。
协议/容器读取、原生数据库与 updater 的真实类型边界等仍待迁移，不能用局部门禁代替整体验收。
尚未提交 PR、启动业务后端、合并或部署生产，原部署路径不变。

### License

MIT
