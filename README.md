
DOC TALK
----

> TODO

### Usages

TODO

### Workflow

https://github.com/Cumulo/calcium-workflow

使用正式 Calcit 0.27.0、caps 0.1.1、Node 24、Yarn 4.18.0。依赖仍采用现有发布图，
其中 Respo/UI 的兼容 alpha 版本暂保留，本次不通过 hash 或浮动 main 绕过正式模块缺口。

```sh
caps --ci
yarn install --immutable
caps verify --toolchain
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

### License

MIT
