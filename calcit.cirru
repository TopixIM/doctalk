
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |js-ffi/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit.std/ |calcit-wss/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store nil
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            let
                location $ js-ffi.browser/location-host
                params $ js-ffi.shared/search-params-create $ .-search location
                host $ .unwrap-or (js-ffi.shared/search-params-get params |host) (.-hostname location)
                port $ .unwrap-or (js-ffi.shared/search-params-get params |port)
                  str $ :port config/site
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (js-ffi.shared/console-error! "|Lost connection!")
                  :on-data on-server-data
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println |Dispatch op op-data
            match op
              :states $ let[] (cursor state)
                decode-map-as op-data $ :: 'List 'Dynamic
                reset! *states $ update-states @*states
                  decode-map-as cursor $ :: 'List 'Dynamic
                  , state
              :effect/connect $ connect!
              _ $ ws-send! $ {} (:kind :op) (:op op) (:data op-data)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Tag 'Dynamic
        'dispatch-action! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-action! (action)
            match action
              (:states cursor state)
                dispatch! :states $ [] cursor state
              (:effect/connect) (dispatch! :effect/connect nil)
              (:session/remove-message data) (dispatch! :session/remove-message data)
              (:user/log-in data) (dispatch! :user/log-in data)
              (:user/sign-up data) (dispatch! :user/sign-up data)
              (:user/log-out) (dispatch! :user/log-out nil)
              (:router/change data) (dispatch! :router/change data)
              _ $ println "|Unknown client action:" action
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            render-app!
            connect!
            add-watch! *store :changes $ fn (store prev) (render-app!)
            add-watch! *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn () $ if (nil? @*store) (connect!) &unit
            println "|App started!"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ respo.ffi.browser/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (raw)
            let
                data $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              match (get data :kind)
                (:some kind)
                  if (tag? kind)
                    match (decode-map-as kind 'Tag)
                      :patch $ let
                          changes $ schema/decode-nullable-field data :data recollect.schema/decode-changes
                        when config/dev? $ js/console.log |Changes $ to-js-data changes
                        reset! *store $ patch-twig @*store changes
                      _ $ println "|unknown server data kind:" data
                    println "|unknown server data kind:" data
                (:none) (println "|unknown server data kind:" data)
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (js-present? client-errors) (js-present? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store prev) (render-app!)
                add-watch! *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target)
              comp-container
                schema/decode-nullable-field
                  decode-map-as @*states $ :: 'Map 'Tag 'Dynamic
                  , :states $ fn (value)
                    decode-map-as value $ :: 'Map 'Dynamic 'Dynamic
                , @*store
              fn (action)
                if (enum? action) (dispatch-action! action) (raise "|Expected a client action enum")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            match
              js-ffi.browser/storage-get $ :storage-key config/site
              (:some text)
                do (println "|Found storage.")
                  dispatch! :user/log-in $ parse-cirru-edn text
              (:none) (println "|Found no storage.")
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch
            |bottom-tip :default hud!
            |./calcit.build-errors.mjs :default client-errors
            |../js-out/calcit.build-errors.mjs :default server-errors
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'ContainerState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ContainerState (:demo 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            if (nil? store) (comp-offline)
              let
                  fields $ decode-map-as store $ :: 'Map 'Tag 'Dynamic
                  state $ schema/decode-nullable-field states :data $ fn (value)
                    if (nil? value) (ContainerState :demo |) (decode-map-as value 'app.comp.container/ContainerState)
                  logged-in? $ schema/decode-nullable-field fields :logged-in? $ fn (value) (decode-map-as value 'Bool)
                  router $ schema/decode-nullable-field fields :router $ fn (value)
                    if (nil? value) ({})
                      decode-map-as value $ :: 'Map 'Tag 'Dynamic
                  route $ schema/decode-optional-field router :name $ fn (value) (decode-map-as value 'Tag)
                div
                  {} $ :style $ merge ui/global ui/fullscreen ui/column
                  comp-navigation logged-in? $ schema/decode-optional-field fields :count $ fn (value) (decode-map-as value 'Number)
                  if logged-in?
                    match route
                      (:some route-name)
                        match route-name
                          :home $ div
                            {} $ :style $ {} (:padding |8px)
                            input $ {} (:style ui/input)
                              :value $ :demo state
                            =< 8 nil
                            <> "|demo page"
                            pre $ {} $ :inner-text
                              str "|backend data" $ format-cirru-edn store
                          :profile $ comp-profile
                            schema/decode-nullable-field fields :user $ fn (value)
                              decode-map-as value $ :: 'Map 'Tag 'Dynamic
                            schema/decode-nullable-field router :data app.schema/decode-members
                          _ $ <> $ str router
                      (:none)
                        <> $ str router
                    comp-login $ >> states :login
                  comp-status-color $ schema/decode-optional-field fields :color $ fn (value) (decode-map-as value 'String)
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    decode-map-as
                      .unwrap-or
                        get-in fields $ [] :session :messages
                        {}
                      :: 'Map 'String 'Dynamic
                    {}
                    fn (info d!)
                      d! $ :: :session/remove-message info
                  when dev? $ comp-reel
                    schema/decode-nullable-field fields :reel-length $ fn (value) (decode-map-as value 'Number)
                    {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Dynamic 'Dynamic) 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline ()
            div
              {} $ :style $ merge ui/global ui/fullscreen ui/column-dispersive
                {} $ :background-color $ :theme config/site
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!)
                    d! $ :: :effect/connect
                <> "|No connection..." $ {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            let
                size 24
                base-style $ {} (:width size) (:height size) (:position :absolute) (:bottom 60) (:left 8) (:border-radius |50%) (:opacity 0.6) (:pointer-events :none)
              div $ {} $ :style
                match color
                  (:some value) (assoc base-style :background-color value)
                  (:none) base-style
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
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
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ decode-map-as
                  .unwrap-or (get states :cursor) nil
                  :: 'Optional $ :: 'List 'Dynamic
                state $ read-login-state states
              div
                {} $ :style $ merge ui/flex ui/center
                div ({})
                  div
                    {} $ :style $ {}
                    div ({})
                      input $ {} (:placeholder |Username)
                        :value $ :username state
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {} (:return 'Unit)
                                :args $ [] 'Enum
                          d! $ :: :states cursor $ {}
                            :username $ str $ .unwrap-or (get e :value) |
                            :password $ :password state
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password)
                        :value $ :password state
                        :style ui/input
                        :on-input $ fn (e d!)
                          hint-fn $ {} (:return 'Unit)
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {} (:return 'Unit)
                                :args $ [] 'Enum
                          d! $ :: :states cursor $ {}
                            :username $ :username state
                            :password $ str $ .unwrap-or (get e :value) |
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in")
                      :style $ merge ui/link
                      :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def initial-state (LoginState :username | :password |)
          :examples $ []
          :schema $ :: 'app.comp.login/LoginState
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic)
                  :: 'Fn $ {}
                    :args $ [] 'Enum
                    :return 'Unit
                :return 'Unit
                :features $ #{} :js-ffi
              dispatch! $ if signup?
                :: :user/sign-up $ [] username password
                :: :user/log-in $ [] username password
              persist-login! username password
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String 'Bool
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'Enum
              :features $ #{} :js-ffi
        'persist-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-login! (username password)
            js-ffi.browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String 'String
            :features $ #{} :js-ffi
        'read-login-state $ %{} 'CodeEntry
          :doc "|Decode only the local credential data; the surrounding Respo cursor map can legitimately retain mixed Tag/String/Number child keys, as defined by respo.core/>>. Do not cast or decode that heterogeneous key space into Tag-only state."
          :code $ quote $ defn read-login-state (states)
            match (get states :data)
              (:some raw-state)
                if (nil? raw-state) initial-state $ decode-map-as raw-state 'app.comp.login/LoginState
              (:none) initial-state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.login/LoginState)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |missing-null-and-stored-credentials)
            :code $ quote $ do
              assert= initial-state $ read-login-state $ {}
              assert= initial-state $ read-login-state $ {} (:data nil)
              let
                  state $ read-login-state $ {}
                    :data $ {} (:username "|迁移用户🐈") (:password |secret031)
                assert= "|迁移用户🐈" $ :username state
                assert= |secret031 $ :password state
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            app.schema :as schema
            app.config :as config
    'app.comp.navigation $ %{} 'FileEntry
      :defs $ {} $ 'comp-navigation
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-navigation (logged-in? count-members)
            div
              {} $ :style $ merge ui/row-center
                {} (:height 48) (:justify-content :space-between) (:padding "|0 16px") (:font-size 16)
                  :border-bottom $ str "|1px solid " $ hsl 0 0 0 0.1
                  :font-family ui/font-fancy
              div
                {}
                  :on-click $ fn (e d!)
                    d! $ :: :router/change $ {} (:name :home)
                  :style $ {} $ :cursor :pointer
                <> (:title config/site) nil
              div
                {}
                  :style $ {} $ :cursor |pointer
                  :on-click $ fn (e d!)
                    d! $ :: :router/change $ {} (:name :profile)
                <> $ if logged-in? |Me |Guest
                =< 8 nil
                <> $ match count-members
                  (:some n) (str n)
                  (:none) |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool $ :: 'Option 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.navigation
          :require
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.core :refer $ defcomp <> span div
            app.config :as config
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (user members)
            div
              {} $ :style $ merge ui/flex
                {} $ :padding 16
              div
                {} $ :style $ {} (:font-family ui/font-fancy) (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ match
                  schema/decode-optional-field user :name $ fn (value) (decode-map-as value 'String)
                  (:some name) name
                  (:none) |
              =< nil 16
              div
                {} $ :style ui/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :style ui/row
                  map-list-kv members $ fn (k username)
                    [] k $ div
                      {} $ :style $ {} (:padding "|0 8px")
                        :border $ str "|1px solid " $ hsl 0 0 80
                        :border-radius |16px
                        :margin "|0 4px"
                      <> $ .unwrap-or username |
              =< nil 48
              div ({})
                button
                  {}
                    :style $ merge ui/button
                    :on-click $ fn (e d!) (refresh-location!)
                  <> |Refresh
                =< 8 nil
                button
                  {}
                    :style $ merge ui/button $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      dispatch! $ :: :user/log-out
                      remove-storage! $ str $ :storage-key config/site
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Map 'Tag 'Dynamic)
              :: 'Map 'Number $ :: 'Option 'String
        'refresh-location! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh-location! ()
            js-ffi.browser/location-replace! $ str
              .-origin $ js-ffi.browser/location-host
              , |?time= $ unix-time-ms
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'remove-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-storage! (storage-key) (js-ffi.browser/storage-remove! storage-key)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo.util.format :refer $ hsl
            app.schema :as schema
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span div button
            respo.comp.space :refer $ =<
            app.config :as config
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            app.schema/SiteConfig :port 5021 :title |Cumulo :icon |http://cdn.tiye.me/logo/cumulo.png :theme |#eeeeff :storage-key |workflow-storage-calcit :storage-file |storage.cirru
          :examples $ []
          :schema $ :: 'app.schema/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Credentials (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Database $ %{} 'CodeEntry
          :doc "|Native domain model; legacy storage/wire is still Map through database-to-wire. extra preserves unknown root fields such as prototype :pages."
          :code $ quote $ defstruct Database
            :sessions $ :: 'Map 'Number 'app.schema/Session
            :users $ :: 'Map 'String 'app.schema/User
            :extra $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'ServerOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ServerOp (:session/connect) (:session/disconnect) (:session/remove-message 'String) (:user/log-in 'app.schema/Credentials) (:user/sign-up 'app.schema/Credentials) (:user/log-out)
            :router/change $ :: 'Map 'Tag 'Dynamic
            :unknown 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'EnumDef
        'Session $ %{} 'CodeEntry
          :doc "|Typed native session. Router and message interoperability maps remain explicit reviewed boundaries; unknown session fields survive decode/encode via extra."
          :code $ quote $ defstruct Session (:id 'Number)
            :user-id $ :: 'Option 'String
            :nickname $ :: 'Option 'String
            :router $ :: 'Map 'Tag 'Dynamic
            :messages $ :: 'Map 'String 'Dynamic
            :extra $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:port 'Number) (:title 'String) (:icon 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'User $ %{} 'CodeEntry
          :doc "|Typed stored account, with Option only inside the native model. extra preserves unknown non-core account fields; wire uses the original Map fields and nil for absent nickname/avatar."
          :code $ quote $ defstruct User (:id 'String) (:name 'String) (:password 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
            :extra $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ {}
              :users $ {}
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'database-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn database-to-wire (db)
            merge (:extra db)
              {}
                :users $ filter-map-kv (:users db)
                  fn (id user)
                    MapEntryDecision :keep id $ user-to-wire user
                :sessions $ filter-map-kv (:sessions db)
                  fn (id session)
                    MapEntryDecision :keep id $ session-to-wire session
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Database
            :return $ :: 'Map 'Tag 'Dynamic
        'decode-credentials $ %{} 'CodeEntry
          :doc "|Decode the two-string legacy login List or rebuild the checked Credentials field shape from an in-memory Struct/Map during Reel replay. Existing Structs must first be converted to a Map: decode-map-as does not accept a Struct directly. No assertion or cast substitutes for field checking."
          :code $ quote $ defn decode-credentials (raw)
            if (list? raw)
              let
                  values $ decode-map-as raw $ :: 'List 'String
                if
                  not= 2 $ count values
                  raise |Expected-two-credential-strings
                Credentials :username
                  .unwrap $ nth values 0
                  , :password $ .unwrap $ nth values 1
              decode-map-as
                if (struct? raw) (&struct:to-map raw) raw
                , 'app.schema/Credentials
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Credentials)
            :args $ [] 'Dynamic
        'decode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-database (raw)
            let
                fields $ merge database $ decode-map-as raw (:: 'Map 'Tag 'Dynamic)
              Database :users (decode-nullable-field fields :users decode-users) :sessions (decode-nullable-field fields :sessions decode-sessions) :extra $ -> fields (dissoc :users) (dissoc :sessions)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-map-roundtrip-preserves-extensions)
            :code $ quote $ let
                legacy $ {}
                  :users $ {} $ |u1
                    {} (:id |u1) (:name "|迁移用户🐈") (:password |digest) (:nickname "|用户") (:avatar nil) (:custom |retained-user)
                  :sessions $ {} $ 1
                    {} (:id 1) (:user-id |u1) (:nickname nil)
                      :router $ {} (:name :home) (:data nil) (:router nil)
                      :messages $ {} $ |m1
                        {} (:id |m1) (:text |Hello)
                      :custom |retained-session
                  :pages $ {} $ :prototype true
                  :custom |retained-root
                model $ decode-database legacy
                account $ .unwrap $ get (:users model) |u1
                current-session $ .unwrap $ get (:sessions model) 1
                credentials $ decode-credentials $ [] "|迁移用户🐈" |password031
              assert= legacy $ database-to-wire model
              assert= "|迁移用户🐈" $ :name account
              assert= (Option :none) (:avatar account)
              assert= (Option :some |u1) (:user-id current-session)
              assert= "|迁移用户🐈" $ :username credentials
              assert= |password031 $ :password credentials
            :tags $ #{} :unit
        'decode-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-members (raw)
            filter-map-kv
              decode-map-as raw $ :: 'Map 'Number 'Dynamic
              fn (id value)
                MapEntryDecision :keep id $ if (nil? value) (Option :none)
                  Option :some $ decode-map-as value 'String
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Number $ :: 'Option 'String
        'decode-nullable-field $ %{} 'CodeEntry
          :doc "|Legacy wire/state field boundary: decode Some payloads and send missing fields to the same decoder as nil. Preserve old nil/default/error behavior; generic T is the actual decoder result, not a cast of unknown data."
          :code $ quote $ defn decode-nullable-field (fields field decoder)
            match (get fields field)
              (:some value) (decoder value)
              (:none) (decoder nil)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'T)
            :args $ [] (:: 'Map 'K 'Dynamic) 'K $ :: 'Fn
              {} (:return 'T)
                :args $ [] 'Dynamic
            :generics $ [] 'K 'T
        'decode-operation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-operation (kind data)
            match kind
              :session/connect $ ServerOp :session/connect
              :session/disconnect $ ServerOp :session/disconnect
              :session/remove-message $ ServerOp :session/remove-message $ if (string? data) (decode-map-as data 'String)
                decode-nullable-field
                  decode-map-as data $ :: 'Map 'Tag 'Dynamic
                  , :id $ fn (value) (decode-map-as value 'String)
              :user/log-in $ ServerOp :user/log-in $ decode-credentials data
              :user/sign-up $ ServerOp :user/sign-up $ decode-credentials data
              :user/log-out $ ServerOp :user/log-out
              :router/change $ ServerOp :router/change $ decode-map-as data (:: 'Map 'Tag 'Dynamic)
              _ $ ServerOp :unknown kind data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ServerOp)
            :args $ [] 'Tag 'Dynamic
        'decode-optional-field $ %{} 'CodeEntry
          :doc "|Decode legacy missing/nil wire fields into typed Option, invoking the payload decoder only for present non-nil values. A nullability normalization at the legacy Map boundary, not a cast or a new fallback value."
          :code $ quote $ defn decode-optional-field (fields field decoder)
            match (get fields field)
              (:some value)
                if (nil? value) (Option :none)
                  Option :some $ decoder value
              (:none) (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'K 'Dynamic) 'K $ :: 'Fn
              {} (:return 'T)
                :args $ [] 'Dynamic
            :generics $ [] 'K 'T
            :return $ :: 'Option 'T
          :tests $ [] $ %{} 'TestEntry (:name |legacy-absence-preserves-zero)
            :code $ quote $ let
                decode-number $ fn (value)
                  hint-fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Number
                  decode-map-as value 'Number
              assert= (Option :none)
                decode-optional-field ({}) :value decode-number
              assert= (Option :none)
                decode-optional-field
                  {} $ :value nil
                  , :value decode-number
              assert= (Option :some 0)
                decode-optional-field
                  {} $ :value 0
                  , :value decode-number
              assert= (Option :some 7)
                decode-optional-field
                  {} $ |key 7
                  , |key decode-number
            :tags $ #{} :unit
        'decode-server-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-server-op (raw)
            if (enum? raw)
              let
                  kind $ decode-map-as (&enum:nth raw 0) 'Tag
                if
                  and (= kind :unknown)
                    = (&enum:count raw) 3
                  ServerOp :unknown
                    decode-map-as (&enum:nth raw 1) 'Tag
                    &enum:nth raw 2
                  decode-operation kind $ if
                    > (&enum:count raw) 1
                    &enum:nth raw 1
                    , nil
              raise |Expected-a-Reel-operation
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ServerOp)
            :args $ [] 'Dynamic
        'decode-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-session (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              Session :id
                decode-nullable-field fields :id $ fn (value) (decode-map-as value 'Number)
                , :user-id
                  decode-optional-field fields :user-id $ fn (value) (decode-map-as value 'String)
                  , :nickname
                    decode-optional-field fields :nickname $ fn (value) (decode-map-as value 'String)
                    , :router
                      decode-nullable-field fields :router $ fn (value)
                        decode-map-as value $ :: 'Map 'Tag 'Dynamic
                      , :messages
                        decode-nullable-field fields :messages $ fn (value)
                          decode-map-as value $ :: 'Map 'String 'Dynamic
                        , :extra $ -> fields (dissoc :id) (dissoc :user-id) (dissoc :nickname) (dissoc :router) (dissoc :messages)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Session)
            :args $ [] 'Dynamic
        'decode-sessions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-sessions (raw)
            filter-map-kv
              decode-map-as raw $ :: 'Map 'Number 'Dynamic
              fn (id value)
                MapEntryDecision :keep id $ decode-session value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Number 'app.schema/Session
        'decode-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-user (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              User :id
                decode-nullable-field fields :id $ fn (value) (decode-map-as value 'String)
                , :name
                  decode-nullable-field fields :name $ fn (value) (decode-map-as value 'String)
                  , :password
                    decode-nullable-field fields :password $ fn (value) (decode-map-as value 'String)
                    , :nickname
                      decode-optional-field fields :nickname $ fn (value) (decode-map-as value 'String)
                      , :avatar
                        decode-optional-field fields :avatar $ fn (value) (decode-map-as value 'String)
                        , :extra $ -> fields (dissoc :id) (dissoc :name) (dissoc :password) (dissoc :nickname) (dissoc :avatar)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/User)
            :args $ [] 'Dynamic
        'decode-users $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-users (raw)
            filter-map-kv
              decode-map-as raw $ :: 'Map 'String 'Dynamic
              fn (id value)
                MapEntryDecision :keep id $ decode-user value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'String 'app.schema/User
        'session-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn session-to-wire (session)
            merge (:extra session)
              {}
                :id $ :id session
                :user-id $ match (:user-id session)
                  (:some value) value
                  (:none) nil
                :nickname $ match (:nickname session)
                  (:some value) value
                  (:none) nil
                :router $ :router session
                :messages $ :messages session
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Session
            :return $ :: 'Map 'Tag 'Dynamic
        'user-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn user-to-wire (user)
            merge (:extra user)
              {}
                :id $ :id user
                :name $ :name user
                :password $ :password user
                :nickname $ match (:nickname user)
                  (:some value) value
                  (:none) nil
                :avatar $ match (:avatar user)
                  (:some value) value
                  (:none) nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/User
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number (:: 'Map 'Tag 'Dynamic)
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            schema/decode-database $ if
              path-exists? $ dbg storage-file
              do (println "|Found local EDN data")
                parse-cirru-edn $ read-file storage-file
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Database
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            cumulo-reel.core/ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data sid)
            let
                op-id $ generate-id!
                op-time $ get-timestamp $ get-time!
              when config/dev? $ println |Dispatch! (str op) op-data sid
              if (= op :effect/persist) (persist-db!)
                let
                    action $ schema/decode-operation op op-data
                  reset! *reel $ reel-reducer @*reel updater action sid op-id op-time config/dev?
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Tag 'Dynamic 'Number
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ .unwrap $ get now :month
                str
                  .unwrap $ get now :day
                  , |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                default-port $ :port config/site
                port $ .unwrap-or
                  .map (get-env |port)
                    fn (text)
                      hint-fn $ {}
                        :args $ [] 'String
                        :return 'Number
                      .unwrap-or (parse-float text) default-port
                  , default-port
              run-server! port
              println $ str "|Server started on port:" port
            ; "|init it before doing multi-threading"
            identity @*reader-reel
            calcit.std.time/set-interval! 200 $ fn () $ render-loop!
            calcit.std.time/set-interval! 600000 $ fn () $ persist-db!
            on-control-c on-exit!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'on-client-message! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-client-message! (sid msg)
            let
                action $ decode-map-as (parse-cirru-edn msg) (:: 'Map 'Tag 'Dynamic)
              match (get action :kind)
                (:none) (println "|unknown action:" action)
                (:some kind)
                  if (tag? kind)
                    if
                      = (decode-map-as kind 'Tag) :op
                      dispatch!
                        schema/decode-nullable-field action :op $ fn (value) (decode-map-as value 'Tag)
                        .unwrap-or (get action :data) nil
                        , sid
                      println "|unknown action:" action
                    println "|unknown action:" action
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number 'String
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc
                  schema/database-to-wire $ :db @*reel
                  , :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reel $ refresh-reel @*reel @*initial-db replay-updater
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'replay-updater $ %{} 'CodeEntry
          :doc "|Reel stores heterogeneous historical record cells. Decode real session/id/time types at replay instead of claiming updater accepts arbitrary values or preserves an unrelated generic Db."
          :code $ quote $ defn replay-updater (db op sid op-id op-time)
            updater db (schema/decode-server-op op) (decode-map-as sid 'Number) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve!
              {} $ :port port
              fn (event)
                hint-fn $ {}
                  :args $ [] 'wss.core/WssEvent
                  :return 'Unit
                match event
                  (:connect sid)
                    do (dispatch! :session/connect nil sid) (println "|New client.")
                  (:message sid msg) (on-client-message! sid msg)
                  (:disconnect sid)
                    do (println "|Client closed!") (dispatch! :session/disconnect nil sid)
                  _ $ println "|unknown data:" event
                , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'calcit.core/FfiTask)
            :args $ [] 'Number
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'String
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel) (begin-twig-frame!)
            wss-each! $ fn (sid)
              hint-fn $ {}
                :args $ [] 'Number
                :return 'Unit
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get (:sessions db) sid
                  old-store $ match (get @*client-caches sid)
                    (:some store) store
                    (:none) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                when
                  not $ empty? changes
                  wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                  swap! *client-caches assoc sid new-store
                , &unit
            finish-twig-frame!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            recollect.memo :refer $ begin-twig-frame! finish-twig-frame!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.date :refer $ Date get-time! get-timestamp extract-time
            calcit.std.path :refer $ join-path
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db maybe-session records)
            let
                raw-session $ match maybe-session
                  (:none) ({})
                  (:some session) (app.schema/session-to-wire session)
                base-data $ {} (:logged-in? false) (:session raw-session)
                  :reel-length $ count records
              match maybe-session
                (:none) base-data
                (:some session)
                  match (:user-id session)
                    (:none) base-data
                    (:some uid)
                      let
                          router $ :router session
                          route-name $ app.schema/decode-optional-field router :name $ fn (value) (decode-map-as value 'Tag)
                          route-data $ match route-name
                            (:none) ({})
                            (:some name)
                              match name
                                :home $ .unwrap-or
                                  get (:extra db) :pages
                                  , nil
                                :profile $ filter-map-kv
                                  twig-members (:sessions db) (:users db)
                                  fn (sid name)
                                    MapEntryDecision :keep sid $ match name
                                      (:some value) value
                                      (:none) nil
                                _ $ {}
                          user $ match
                            get (:users db) uid
                            (:none) ({})
                            (:some found) (twig-user found)
                        merge base-data $ {} (:logged-in? true) (:user user)
                          :router $ assoc router :data route-data
                          :count $ count $ :sessions db
                          :color $ rand-hex-color!
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Database (:: 'Option 'app.schema/Session)
              :: 'List $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (sid session)
              MapEntryDecision :keep sid $ match (:user-id session)
                (:none) (Option :none)
                (:some uid)
                  match (get users uid)
                    (:none) (Option :none)
                    (:some user)
                      Option :some $ :name user
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Number 'app.schema/Session) (:: 'Map 'String 'app.schema/User)
            :return $ :: 'Map 'Number $ :: 'Option 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            dissoc (app.schema/user-to-wire user) :password
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/User
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect) (session/connect db sid)
              (:session/disconnect) (session/disconnect db sid)
              (:session/remove-message id) (session/remove-message db id sid)
              (:user/log-in credentials) (user/log-in db credentials sid op-id)
              (:user/sign-up credentials) (user/sign-up db credentials sid op-id)
              (:user/log-out) (user/log-out db sid)
              (:router/change route) (router/change db route sid)
              (:unknown kind data)
                do (eprintln |Unknown-op: kind) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/ServerOp 'Number 'String 'Number
          :tests $ [] $ %{} 'TestEntry (:name |account-session-and-wire-lifecycle)
            :code $ quote $ do
              let
                  db0 $ schema/decode-database schema/database
                  db1 $ updater db0 (schema/ServerOp :session/connect) 1 |connect 0
                  creds $ schema/decode-credentials $ [] "|迁移用户🐈" |secret031
                  db2 $ updater db1 (schema/ServerOp :user/sign-up creds) 1 |u1 1
                  user $ .unwrap $ get (:users db2) |u1
                  session $ .unwrap $ get (:sessions db2) 1
                  duplicate $ updater db2 (schema/ServerOp :user/sign-up creds) 1 |duplicate 2
                  duplicate-session $ .unwrap $ get (:sessions duplicate) 1
                  duplicate-message $ schema/decode-nullable-field (:messages duplicate-session) |duplicate $ fn (value)
                    decode-map-as value $ :: 'Map 'Tag 'String
                  logged-out $ updater duplicate (schema/ServerOp :user/log-out) 1 |logout 3
                  wrong $ updater logged-out
                    schema/ServerOp :user/log-in $ schema/Credentials :username "|迁移用户🐈" :password |wrong
                    , 1 |bad-password 4
                  wrong-session $ .unwrap $ get (:sessions wrong) 1
                  correct $ updater wrong (schema/ServerOp :user/log-in creds) 1 |login 5
                  profile $ updater correct
                    schema/ServerOp :router/change $ {} $ :name :profile
                    , 1 |route 6
                  removed $ updater profile (schema/ServerOp :session/remove-message |bad-password) 1 |remove 7
                  final-session $ .unwrap $ get (:sessions removed) 1
                  view $ app.twig.container/twig-container removed (Option :some final-session) ([])
                  view-user $ schema/decode-nullable-field view :user $ fn (value)
                    decode-map-as value $ :: 'Map 'Tag 'Dynamic
                  disconnected $ updater removed (schema/ServerOp :session/disconnect) 1 |disconnect 8
                assert= 1 $ count $ :users db2
                assert= "|迁移用户🐈" $ :name user
                assert= true $ not= |secret031 $ :password user
                assert= (Option :some |u1) (:user-id session)
                assert= (Option :some "|Name is taken: 迁移用户🐈") (get duplicate-message :text)
                assert= (Option :none)
                  :user-id $ .unwrap $ get (:sessions logged-out) 1
                assert= (Option :none) (:user-id wrong-session)
                assert= true $ contains? (:messages wrong-session) |bad-password
                assert= (Option :some |u1) (:user-id final-session)
                assert= (Option :some :profile)
                  get (:router final-session) :name
                assert= false $ contains? (:messages final-session) |bad-password
                assert= false $ contains? view-user :password
                assert= true $ schema/decode-nullable-field view :logged-in? $ fn (value) (decode-map-as value 'Bool)
                assert= 0 $ count $ :sessions disconnected
                assert= 1 $ count $ :users disconnected
              let
                  base $ schema/decode-database schema/database
                  empty-reel $ cumulo-reel.core/ReelState :base base :db base :records ([]) :merged? false
                  connected $ cumulo-reel.core/reel-reducer empty-reel updater (schema/ServerOp :session/connect) 1 |c1 0 true
                  signed $ cumulo-reel.core/reel-reducer connected updater
                    schema/ServerOp :user/sign-up $ schema/Credentials :username |Replay031 :password |fixture-secret
                    , 1 |replay-user 1 true
                  restored $ cumulo-reel.core/refresh-reel signed base app.server/replay-updater
                assert= 2 $ count $ :records signed
                assert=
                  schema/database-to-wire $ :db signed
                  schema/database-to-wire $ :db restored
                assert= (schema/ServerOp :unknown :unknown |legacy)
                  schema/decode-server-op $ :: :unknown |legacy
            :tags $ #{} :native :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.schema :as schema)
            respo-message.updater :refer $ update-messages
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db route sid)
            let
                session $ .unwrap $ get (:sessions db) sid
              app.updater.session/put-session db sid $ struct-with session $ :router route
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic) 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'add-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-message (session id text)
            struct-with session $ :messages $ assoc (:messages session) id
              {} (:id id) (:text text)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Session)
            :args $ [] 'app.schema/Session 'String 'String
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid)
            put-session db sid $ app.schema/Session :id sid :user-id (Option :none) :nickname (Option :none) :router
              {} (:name :home) (:data nil) (:router nil)
              , :messages ({}) :extra $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid)
            struct-with db $ :sessions $ dissoc (:sessions db) sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number
        'put-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-session (db sid session)
            struct-with db $ :sessions $ assoc (:sessions db) sid session
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'app.schema/Session
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db id sid)
            let
                session $ .unwrap $ get (:sessions db) sid
              put-session db sid $ struct-with session $ :messages
                dissoc (:messages session) id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id)
            let
                username $ :username credentials
                maybe-user $ find
                  .to-list $ distinct-values $ :users db
                  fn (user)
                    hint-fn $ {}
                      :args $ [] 'app.schema/User
                      :return 'Bool
                    matches-username? user username
                session $ .unwrap $ get (:sessions db) sid
              match maybe-user
                (:some user)
                  if
                    =
                      md5 $ :password credentials
                      :password user
                    app.updater.session/put-session db sid $ struct-with session $ :user-id
                      Option :some $ :id user
                    app.updater.session/put-session db sid $ app.updater.session/add-message session op-id $ str "|Wrong password for " username
                (:none)
                  app.updater.session/put-session db sid $ app.updater.session/add-message session op-id $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/Credentials 'Number 'String
            :features $ #{} :js-ffi
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid)
            let
                session $ .unwrap $ get (:sessions db) sid
              app.updater.session/put-session db sid $ struct-with session $ :user-id (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number
        'matches-username? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn matches-username? (user username)
            = username $ :name user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'app.schema/User 'String
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id)
            let
                username $ :username credentials
                maybe-user $ find
                  .to-list $ distinct-values $ :users db
                  fn (user)
                    hint-fn $ {}
                      :args $ [] 'app.schema/User
                      :return 'Bool
                    matches-username? user username
                session $ .unwrap $ get (:sessions db) sid
              match maybe-user
                (:some existing)
                  app.updater.session/put-session db sid $ app.updater.session/add-message session op-id $ str "|Name is taken: " username
                (:none)
                  let
                      user $ app.schema/User :id op-id :name username :nickname (Option :some username) :password
                        md5 $ :password credentials
                        , :avatar (Option :none) :extra $ {}
                      next-db $ struct-with db $ :users
                        assoc (:users db) op-id user
                    app.updater.session/put-session next-db sid $ struct-with session $ :user-id (Option :some op-id)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/Credentials 'Number 'String
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            cumulo-util.core :refer $ find-first
            calcit.std.hash :refer $ md5
