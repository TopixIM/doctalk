
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
          :code $ quote $ defatom *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store nil
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'ParsedUrlHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ParsedUrlHost (:query 'app.client/QueryHost)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'QueryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait QueryHost
            :host $ :: 'JsNullish 'String
            :port $ :: 'JsNullish 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            let
                location $ unsafe-coerce js/location 'js-ffi.browser/LocationHost
                url-obj $ unsafe-coerce
                  url-parse (.-href location) true
                  , 'app.client/ParsedUrlHost
                query $ unsafe-coerce (.-query url-obj) 'app.client/QueryHost
                raw-host $ .-host query
                raw-port $ .-port query
                host $ if (js-present? raw-host) (unsafe-coerce raw-host String) (.-hostname location)
                port $ if (js-present? raw-port) (unsafe-coerce raw-port String) (:port config/site)
              ws-connect! (str |ws:// host |: port)
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event) (reset! *store nil) (js/console.error "|Lost connection!") &unit
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
            case-default op
              ws-send! $ {} (:kind :op) (:op op) (:data op-data)
              :states $ let[] (cursor s) op-data $ reset! *states (update-states @*states cursor s)
              :effect/connect $ connect!
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
            :args $ [] 'Dynamic
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
          :code $ quote $ defn on-server-data (data)
            match (get data :kind)
              (:some kind)
                if (tag? kind)
                  case-default (decode-map-as kind 'Tag) (println "|unknown server data kind:" data)
                    :patch $ let
                        changes $ schema/decode-nullable-field data :data recollect.schema/decode-changes
                      when config/dev? $ js/console.log |Changes $ to-js-data changes
                      reset! *store $ patch-twig @*store changes
                  println "|unknown server data kind:" data
              (:none) (println "|unknown server data kind:" data)
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
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
              , dispatch-action!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            let
                raw $ js/localStorage.getItem $ :storage-key config/site
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! :user/log-in $ parse-cirru-edn $ unsafe-coerce raw String
                println "|Found no storage."
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
            |url-parse :default url-parse
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
                        case-default route-name
                          <> $ str router
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
                            schema/decode-nullable-field router :data $ fn (value)
                              decode-map-as value $ :: 'Map 'Number 'Dynamic
                      (:none)
                        <> $ str router
                    comp-login $ >> states :login
                  comp-status-color $ schema/decode-optional-field fields :color $ fn (value) (decode-map-as value 'String)
                  when dev? $ comp-inspect |Store store $ {} (:bottom 0) (:left 0) (:max-width |100%)
                  comp-messages
                    decode-map-as
                      option:unwrap-or
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
                  option:unwrap-or (get states :cursor) nil
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
                            :username $ str $ option:unwrap-or (get e :value) |
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
                            :password $ str $ option:unwrap-or (get e :value) |
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
              dispatch! $ if signup?
                :: :user/sign-up $ [] username password
                :: :user/log-in $ [] username password
              persist-login! username password
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String 'String 'Bool
        'persist-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-login! (username password)
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ [] username password
            , &unit
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
                  -> members (&map:to-list)
                    map $ fn (pair)
                      let[] (k username) pair $ [] k $ div
                        {} $ :style $ {} (:padding "|0 8px")
                          :border $ str "|1px solid " $ hsl 0 0 80
                          :border-radius |16px
                          :margin "|0 4px"
                        <> username
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
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Number 'Dynamic)
        'refresh-location! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn refresh-location! ()
            js/location.replace $ str js/location.origin |?time= $ .now js/Date
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'remove-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-storage! (storage-key) (js/localStorage.removeItem storage-key) &unit
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
            = |dev $ option:unwrap-or (get-env |mode) |release
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
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:port 'Number) (:title 'String) (:icon 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ do session $ {}
              :users $ do user $ {}
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
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
        'decode-optional-field $ %{} 'CodeEntry
          :doc "|Decode legacy missing/nil wire fields into typed Option, invoking the payload decoder only for present non-nil values. A nullability normalization at the legacy Map boundary, not a cast or a new fallback value."
          :code $ quote $ defn decode-optional-field (fields field decoder)
            match (get fields field)
              (:some value)
                if (nil? value) (%none)
                  %some $ decoder value
              (:none) (%none)
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
              assert= (%none)
                decode-optional-field ({}) :value decode-number
              assert= (%none)
                decode-optional-field
                  {} $ :value nil
                  , :value decode-number
              assert= (%some 0)
                decode-optional-field
                  {} $ :value 0
                  , :value decode-number
              assert= (%some 7)
                decode-optional-field
                  {} $ |key 7
                  , |key decode-number
            :tags $ #{} :unit
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ do router $ {} (:name :home) (:data nil) (:router nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge
                  assert-type schema/database $ :: 'Map 'Tag 'Dynamic
                  assert-type
                    parse-cirru-edn $ read-file storage-file
                    :: 'Map 'Tag 'Dynamic
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState (:: 'Map 'Tag 'Dynamic)
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            cumulo-reel.core/ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState (:: 'Map 'Tag 'Dynamic)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data sid)
            let
                op-id $ generate-id!
                op-time $ get-timestamp $ get-time!
              if config/dev? $ println |Dispatch! (str op) op-data sid
              if (= op :effect/persist) (persist-db!)
                let
                    action $ case-default op (:: op op-data)
                      :session/connect $ :: :session/connect
                      :session/disconnect $ :: :session/disconnect
                      :user/log-out $ :: :user/log-out op-data
                  reset! *reel $ reel-reducer @*reel updater action sid op-id op-time config/dev?
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
                port $ option:unwrap-or
                  option:map (get-env |port)
                    fn (text)
                      hint-fn $ {}
                        :args $ [] 'String
                        :return 'Number
                      result:unwrap-or (parse-float text) default-port
                  , default-port
              run-server! port
              println $ str "|Server started on port:" port
            ; "|init it before doing multi-threading"
            identity @*reader-reel
            set-interval 200 $ fn () $ render-loop!
            set-interval 600000 $ fn () $ persist-db!
            on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc (:db @*reel) :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
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
            updater db op (decode-map-as sid 'Number) (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Dynamic 'Dynamic 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
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
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
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
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get-in db $ [] :sessions sid
                  old-store $ option:unwrap-or (get @*client-caches sid) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                ; when config/dev? $ println "|Changes for" sid |: changes $ count records
                if
                  not $ empty? changes
                  do
                    wss-send! sid $ format-cirru-edn $ {} (:kind :patch) (:data changes)
                    swap! *client-caches assoc sid new-store
            finish-twig-frame!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState (:: 'Map 'Tag 'Dynamic)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
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
          :code $ quote $ defn twig-container (db session records)
            let
                db-map $ unsafe-coerce db $ :: 'Map 'Tag 'Dynamic
                session-map $ unsafe-coerce
                  or session $ {}
                  :: 'Map 'Tag 'Dynamic
                user-id $ &map:get session-map :user-id
                logged-in? $ some? user-id
                router $ unsafe-coerce (&map:get session-map :router) (:: 'Map 'Tag 'Dynamic)
                base-data $ {} (:logged-in? logged-in?) (:session session-map)
                  :reel-length $ count records
              merge base-data $ unsafe-coerce
                if logged-in?
                  let
                      user $ unsafe-coerce
                        option:unwrap-or
                          get-in db-map $ [] :users user-id
                          {}
                        :: 'Map 'Tag 'Dynamic
                    {}
                      :user $ twig-user user
                      :router $ assoc router :data $ case-default (&map:get router :name) ({})
                        :home $ &map:get db-map :pages
                        :profile $ twig-members (&map:get db-map :sessions) (&map:get db-map :users)
                      :count $ count $ &map:get db-map :sessions
                      :color $ rand-hex-color!
                  {}
                :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic 'Dynamic $ :: 'List 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            ->
              unsafe-coerce sessions $ :: 'Map 'Number 'Dynamic
              &map:to-list
              map $ fn (pair)
                let[] (k session) pair $ [] k $ option:unwrap-or
                  get-in users $ []
                    &map:get
                      unsafe-coerce session $ :: 'Map 'Tag 'Dynamic
                      , :user-id
                    , :name
                  , nil
              pairs-map
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Number 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            calcit.std.rand :refer $ rand-hex-color!
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user) (dissoc user :password)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
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
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.schema :as schema)
            respo-message.updater :refer $ update-messages
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :router) op-data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid)
              merge schema/session $ {} $ :id sid
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db op-data sid op-id op-time)
            update db :sessions $ fn (session) (dissoc session sid)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time)
            update-in db ([] :sessions sid :messages)
              fn (messages)
                unsafe-coerce
                  dissoc
                    option:unwrap-or messages $ {}
                    &map:get (unsafe-coerce op-data 'Map) :id
                  , 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'as-user-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-user-map (user) (unsafe-coerce user 'Map)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  unsafe-coerce op-data $ :: 'List 'String
                maybe-user $ ->
                  unsafe-coerce (&map:get db :users)
                    :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                  vals
                  , &set:to-list $ find
                    fn (user)
                      hint-fn $ {}
                        :args $ [] $ :: 'Map 'Tag 'Dynamic
                        :return 'Bool
                      matches-username? user username
              update-in db ([] :sessions sid)
                fn (session)
                  if (option:some? maybe-user)
                    unsafe-coerce
                      if
                        = (md5 password)
                          &map:get
                            as-user-map $ option:unwrap maybe-user
                            , :password
                        assoc
                          unsafe-coerce
                            option:unwrap-or session $ {}
                            :: 'Map 'Tag 'Dynamic
                          , :user-id $ &map:get
                            as-user-map $ option:unwrap maybe-user
                            , :id
                        update
                          unsafe-coerce
                            option:unwrap-or session $ {}
                            :: 'Map 'Tag 'Dynamic
                          , :messages $ fn (messages)
                            unsafe-coerce
                              assoc
                                or messages $ {}
                                , op-id $ {} (:id op-id)
                                  :text $ str "|Wrong password for " username
                              , 'Dynamic
                      , 'Dynamic
                    update
                      unsafe-coerce
                        option:unwrap-or session $ {}
                        :: 'Map 'Tag 'Dynamic
                      , :messages $ fn (messages)
                        unsafe-coerce
                          assoc
                            or messages $ {}
                            , op-id $ {} (:id op-id)
                              :text $ str "|No user named: " username
                          , 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db op-data sid op-id op-time)
            assoc-in db ([] :sessions sid :user-id) nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
        'matches-username? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn matches-username? (user username)
            = username $ &map:get user :name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'String
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  unsafe-coerce op-data $ :: 'List 'String
                maybe-user $ find
                  ->
                    unsafe-coerce (&map:get db :users)
                      :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
                    vals
                    , &set:to-list
                  fn (user)
                    hint-fn $ {}
                      :args $ [] $ :: 'Map 'Tag 'Dynamic
                      :return 'Bool
                    matches-username? user username
              if (option:some? maybe-user)
                update-in db ([] :sessions sid :messages)
                  fn (messages)
                    unsafe-coerce
                      assoc
                        option:unwrap-or messages $ {}
                        , op-id $ {} (:id op-id)
                          :text $ str "|Name is taken: " username
                      , 'Dynamic
                -> db
                  assoc-in ([] :sessions sid :user-id) op-id
                  assoc-in ([] :users op-id)
                    {} (:id op-id) (:name username) (:nickname username)
                      :password $ md5 password
                      :avatar nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Number 'String 'Number
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            cumulo-util.core :refer $ find-first
            calcit.std.hash :refer $ md5
