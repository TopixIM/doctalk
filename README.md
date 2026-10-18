
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
**源码迁移尚未完成，当前候选不能部署。** alpha.5 配对仍须等待发布链路实际完成后再单独验证。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn check-client
yarn check-server
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
此阶段只准备配对工具链、正式图和目标检查入口，尚未提交 PR 或操作生产。

### License

MIT
