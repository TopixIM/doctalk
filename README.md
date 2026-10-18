
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

站点配置和登录/容器本地状态已改为真实 Struct；原配置值、存储文件、Map 状态、用户名/密码
List 和 WebSocket envelope 保持不变。网络 patch 使用 Recollect 自带 `decode-changes` 重新建立
EDN 往返后的名义类型，不再强转；未知消息仍忽略。游客缺失的计数/颜色在视图中明确使用 Option，
Respo 游标保留合法的混合键，不伪装成纯 Tag Map。

已规范7处会导致 JS 导入时立即调用的顶层定义；门禁缺口见
[Calcit #2166](https://github.com/calcit-lang/calcit/issues/2166)。现有 imports 不作多余改写；
build-errors 路径对齐生成器实际输出的 `.mjs`，watcher 使用带 `!` 的当前接口。

当前 browser253/253 可达定义及全部8个自有前端 namespace（38/38定义）通过；两条定义附带
native 回归通过，配对 JS 生成、Vite 构建，以及实际生成代码的视图/输入/序列化 patch 回放通过。
临时 Node 回放使用现有 Vite 打包浏览器依赖，不声称原始浏览器模块可直接由 Node 加载；也不是
浏览器端到端、WebSocket 服务或生产验收。临时入口、产物及脚本均不纳入仓库。

原生端仍为63通过、1失败、7阻塞、1级联。Reel 已按数据库 Map 实例化，并在历史记录回放边界
检查 sid/id/time；完整数据库、session、user、twig/updater 类型仍须加强和验收。弱类型扫描仍有
28个定义的51处 schema Dynamic，未放宽任何基线或声称类型债务清零。尚未提交 PR、启动业务
后端、合并或部署生产。

### License

MIT
