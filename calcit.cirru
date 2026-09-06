
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!)
      :feature-policy $ {}
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *store nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ let
                location $ unsafe-coerce js/location JsObject
                url-obj $ unsafe-coerce
                  url-parse (.-href location) true
                  , JsObject
                query $ unsafe-coerce (.-query url-obj) JsObject
                raw-host $ .-host query
                raw-port $ .-port query
                host $ if (js-present? raw-host) (unsafe-coerce raw-host String) (.-hostname location)
                port $ if (js-present? raw-port) (unsafe-coerce raw-port String) (&map:get config/site :port)
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!")
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op op-data)
              when
                and config/dev? $ not= op :states
                println |Dispatch op op-data
              case-default op
                ws-send! $ {} (:kind :op) (:op op) (:data op-data)
                :states $ let[] (cursor s) op-data
                  reset! *states $ update-states @*states cursor s
                :effect/connect $ connect!
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              render-app!
              connect!
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              on-page-touch $ fn ()
                if (nil? @*store) (connect!)
              println "|App started!"
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ .querySelector js/document |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-server-data (data)
              (case-default (&map:get data :kind) (println "|unknown server data kind:" data) (:patch (do (when config/dev? (js/console.log |Changes (to-js-data (&map:get data :data)))) (reset! *store (patch-twig @*store (&map:get data :data))))))
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (&map:get @*states :states) @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (&map:get config/site :storage-key)
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! :user/log-in $ parse-cirru-edn (unsafe-coerce raw String)
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.client $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch
            |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              let
                  state $ either (&map:get states :data)
                    {} $ :demo |
                  session $ &map:get
                    either store $ {}
                    , :session
                  router $ either
                    &map:get
                      either store $ {}
                      , :router
                    {}
                  router-data $ &map:get router :data
                if (nil? store) (comp-offline)
                  div
                    {} $ :style (merge ui/global ui/fullscreen ui/column)
                    comp-navigation (&map:get store :logged-in?) (&map:get store :count)
                    if (&map:get store :logged-in?)
                      case-default (&map:get router :name) (<> router)
                        :home $ div
                          {} $ :style
                            {} $ :padding |8px
                          input $ {} (:style ui/input)
                            :value $ unsafe-coerce (&map:get state :demo) 'String
                          =< 8 nil
                          <> "|demo page"
                          pre $ {}
                            :inner-text $ str "|backend data" (format-cirru-edn store)
                        :profile $ comp-profile (&map:get store :user) (&map:get router :data)
                      comp-login $ >> states :login
                    comp-status-color $ &map:get store :color
                    when dev? $ comp-inspect |Store store
                      {} (:bottom 0) (:left 0) (:max-width |100%)
                    comp-messages
                      option:unwrap-or
                        get-in store $ [] :session :messages
                        {}
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    when dev? $ comp-reel (&map:get store :reel-length) ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-offline () $ div
              {} $ :style
                merge ui/global ui/fullscreen ui/column-dispersive $ {}
                  :background-color $ &map:get config/site :theme
              div $ {}
                :style $ {} (:height 0)
              div $ {}
                :style $ {}
                  :background-image $ str "|url(" (&map:get config/site :icon) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!) (d! :effect/connect nil)
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {}
                :style $ let
                    size 24
                  {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:background-color color) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo.core :refer $ defcomp <> >> div span button input pre
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            app.comp.navigation :refer $ comp-navigation
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            app.schema :as schema
            app.config :as config
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ &map:get states :cursor
                  state $ or (&map:get states :data) initial-state
                div
                  {} $ :style
                    unsafe-coerce
                      merge
                        unsafe-coerce ui/flex $ :: 'Map 'Tag 'Dynamic
                        unsafe-coerce ui/center $ :: 'Map 'Tag 'Dynamic
                      :: 'Map 'Tag 'Dynamic
                  div ({})
                    div
                      {} $ :style ({})
                      div ({})
                        input $ {} (:placeholder |Username)
                          :value $ &map:get state :username
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username (app.schema/read-field e :value)
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password)
                          :value $ &map:get state :password
                          :style ui/input
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password (app.schema/read-field e :value)
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up")
                        :style $ merge ui/link
                        :on-click $ on-submit (&map:get state :username) (&map:get state :password) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in")
                        :style $ merge ui/link
                        :on-click $ on-submit (&map:get state :username) (&map:get state :password) false
          :examples $ []
          :schema $ :: 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                js/localStorage.setItem (&map:get config/site :storage-key)
                  format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.login $ :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {}
        'comp-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-navigation (logged-in? count-members)
              div
                {} $ :style
                  merge ui/row-center $ {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                    :border-bottom $ str "|1px solid " (hsl 0 0 0 0.1)
                    :font-family ui/font-fancy
                div
                  {}
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :home)
                    :style $ {} (:cursor :pointer)
                  <> (&map:get config/site :title) nil
                div
                  {}
                    :style $ {} (:cursor |pointer)
                    :on-click $ fn (e d!)
                      d! :router/change $ {} (:name :profile)
                  <> $ if logged-in? |Me |Guest
                  =< 8 nil
                  <> count-members
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.navigation $ :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> span div
            app.config :as config
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} $ :style
                  merge ui/flex $ {} (:padding 16)
                div
                  {} $ :style
                    {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (&map:get user :name)
                =< nil 16
                div
                  {} $ :style ui/row
                  <> |Members:
                  =< 8 nil
                  list->
                    {} $ :style ui/row
                    -> members (&map:to-list)
                      map $ fn (pair)
                        let[] (k username) pair $ [] k
                          div
                            {} $ :style
                              {} (:padding "|0 8px")
                                :border $ str "|1px solid " (hsl 0 0 80)
                                :border-radius |16px
                                :margin "|0 4px"
                            <> username
                =< nil 48
                div ({})
                  button
                    {}
                      :style $ merge ui/button
                      :on-click $ fn (e d!)
                        js/location.replace $ str js/location.origin |?time= (.now js/Date)
                    <> |Refresh
                  =< 8 nil
                  button
                    {}
                      :style $ merge ui/button
                        {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch!) (dispatch! :user/log-out nil)
                        js/localStorage.removeItem $ &map:get config/site :storage-key
                    <> "|Log out"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.profile $ :require
            respo.util.format :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            app.config :as config
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:port 5021) (:title |Cumulo) (:icon |http://cdn.tiye.me/logo/cumulo.png) (:theme |#eeeeff) (:storage-key |workflow-storage-calcit) (:storage-file |storage.cirru)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def database $ {}
              :sessions $ do session ({})
              :users $ do user ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'read-field $ %{} 'CodeEntry (:doc "|Read a field from an open map or nominal struct boundary.")
          :code $ quote
            defn read-field (value field)
              if (struct? value) (&struct:get value field) (&map:get value field)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Tag
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router
                {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-cirru-edn (read-file storage-file)
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ struct-with reel-schema (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op op-data sid)
              let
                  op-id $ generate-id!
                  op-time $ -> (get-time!) (.timestamp)
                if config/dev? $ println |Dispatch! (str op) op-data sid
                if (= op :effect/persist) (persist-db!)
                  let
                      action $ case-default op (:: op op-data)
                        :session/connect $ :: :session/connect
                        :session/disconnect $ :: :session/disconnect
                        :user/log-out $ :: :user/log-out op-data
                    reset! *reel $ reel-reducer @*reel updater action sid op-id op-time config/dev?
          :examples $ []
          :schema $ :: 'Dynamic
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-backup-path! () $ let
                now $ extract-time (get-time!)
              join-path calcit-dirname |backups
                str $ &map:get now :month
                str (&map:get now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              let
                  port $ option:unwrap-or
                    option:map (get-env |port) parse-float
                    &map:get config/site :port
                run-server! port
                println $ str "|Server started on port:" port
              do (; "|init it before doing multi-threading") (identity @*reader-reel)
              set-interval 200 $ fn () (render-loop!)
              set-interval 600000 $ fn () (persist-db!)
              on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Dynamic
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  assoc (:db @*reel) :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "|Code updated..")
              if (not config/dev?) (raise "|reloading only happens in dev mode")
              clear-twig-caches!
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-loop! () $ when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! (&{} :port port)
                fn (data)
                  match data
                    (:connect sid)
                      do (dispatch! :session/connect nil sid) (println "|New client.")
                    (:message sid msg)
                      let
                          action $ parse-cirru-edn msg
                        case-default (&map:get action :kind) (println "|unknown action:" action)
                          :op $ dispatch! (&map:get action :op) (&map:get action :data) sid
                    (:disconnect sid)
                      do (println "|Client closed!") (dispatch! :session/disconnect nil sid)
                    _ $ println "|unknown data:" data
          :examples $ []
          :schema $ :: 'Dynamic
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def storage-file $ if (empty? calcit-dirname)
              str calcit-dirname $ &map:get config/site :storage-file
              str calcit-dirname |/ $ &map:get config/site :storage-file
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sync-clients! (reel) (begin-twig-frame!)
              wss-each! $ fn (sid)
                let
                    db $ :db reel
                    records $ :records reel
                    session $ get-in db ([] :sessions sid)
                    old-store $ or (get @*client-caches sid) nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "|Changes for" sid |: changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ format-cirru-edn
                        {} (:kind :patch) (:data changes)
                      swap! *client-caches assoc sid new-store
              finish-twig-frame!
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Unit)
              :args $ [] 'cumulo-reel.core/ReelState
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.server $ :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ Date get-time! get-timestamp extract-time
            calcit.std.path :refer $ join-path
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-container (db session records)
              let
                  session-map $ unsafe-coerce (option:unwrap-or session {}) 'Map
                  logged-in? $ some? (&map:get session-map :user-id)
                  router $ unsafe-coerce (&map:get session-map :router) 'Map
                  base-data $ {} (:logged-in? logged-in?) (:session session-map)
                    :reel-length $ count records
                merge base-data $ if logged-in?
                  {}
                    :user $ twig-user
                      option:unwrap-or
                        get-in db $ [] :users (&map:get session-map :user-id)
                        , {}
                    :router $ assoc router :data
                      case-default (&map:get router :name) ({})
                        :home $ &map:get db :pages
                        :profile $ twig-members (&map:get db :sessions) (&map:get db :users)
                    :count $ count (&map:get db :sessions)
                    :color $ rand-hex-color!
                  , nil
          :examples $ []
          :schema $ :: 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions (&map:to-list)
                .map-pair $ fn (k session)
                  [] k $ option:unwrap-or
                    get-in users $ [] (&map:get session :user-id) :name
                    , |
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {}
        'twig-user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user) (dissoc user :password)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
              match op
                (:session/connect) (session/connect db nil sid op-id op-time)
                (:session/disconnect) (session/disconnect db nil sid op-id op-time)
                (:session/remove-message op-data) (session/remove-message db op-data sid op-id op-time)
                (:user/log-in op-data) (user/log-in db op-data sid op-id op-time)
                (:user/sign-up op-data) (user/sign-up db op-data sid op-id op-time)
                (:user/log-out op-data) (user/log-out db op-data sid op-id op-time)
                (:router/change op-data) (router/change db op-data sid op-id op-time)
                _ $ do (eprintln "|Unknown op:" op) db
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.schema :as schema)
            respo-message.updater :refer $ update-messages
    'app.updater.router $ %{} 'FileEntry
      :defs $ {}
        'change $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.updater.router)
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid)
                merge schema/session $ {} (:id sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db op-data sid op-id op-time)
              update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc (option:unwrap-or messages {}) (&map:get op-data :id)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require (app.schema :as schema)
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'as-user-map $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn as-user-map (user) (unsafe-coerce user 'Map)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Map)
              :args $ [] 'Dynamic
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-in (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ -> (&map:get db :users) (vals) (.to-list)
                    find $ fn (user)
                      and $ = username
                        &map:get (as-user-map user) :name
                update-in db ([] :sessions sid)
                  fn (session)
                    if (option:some? maybe-user)
                      if
                        = (md5 password)
                          &map:get
                            as-user-map $ option:unwrap maybe-user
                            , :password
                        assoc (option:unwrap-or session {}) :user-id $ &map:get
                          as-user-map $ option:unwrap maybe-user
                          , :id
                        update (option:unwrap-or session {}) :messages $ fn (messages)
                          assoc messages op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      update (option:unwrap-or session {}) :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-out (db op-data sid op-id op-time)
              assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sign-up (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ find
                    -> (&map:get db :users) vals .to-list
                    fn (user)
                      = username $ &map:get (as-user-map user) :name
                if (option:some? maybe-user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages)
                      assoc (option:unwrap-or messages {}) op-id $ {} (:id op-id)
                        :text $ str "|Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            cumulo-util.core :refer $ find-first
            calcit.std.hash :refer $ md5
