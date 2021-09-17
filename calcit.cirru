
{}
  :configs $ {} (:reload-fn |app.server/reload!) (:port 6001) (:output |src) (:compact-output? true) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/
    :init-fn |app.server/main!
    :extension |.cljs
  :ir $ {} (:package |app)
    :root $ {} (:def |main!) (:ns |main)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryo4cIlgAHZ)
              |j $ {} (:text |comp-container) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1hV5IlxCH-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1CV9UxeCBb)
                  |j $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkyrqIglCr-)
                :type :expr
                :at 1500541010211
                :by nil
                :id |r1aE9IglCB-
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ByZB58exAB-)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJVBcUxx0Bb)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |either) (:type :leaf) (:at 1626339966701) (:by |B1y7Rc-Zz)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1LScUglRSW)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJvHc8eeAB-)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |ByrH5IggAHW
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1619672454596) (:by |B1y7Rc-Zz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:demo) (:type :leaf) (:at 1619672457155) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text "|\"") (:type :leaf) (:at 1619672457748) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1619672455293
                                    :by |B1y7Rc-Zz
                                :type :expr
                                :at 1619672453822
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1619672448212
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |HJmS5IllASW
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |session) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkYrq8lgCHb)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:session) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hksr5IxlCSZ)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |either) (:type :leaf) (:at 1614526598716) (:by |B1y7Rc-Zz)
                                  |T $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJhS5UxeRBb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1614526600700) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1614526599733
                                    :by |B1y7Rc-Zz
                                :type :expr
                                :at 1614526597596
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |BycSqLllCSW
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |ryuSqIllABW
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |router) (:type :leaf) (:at 1525106929232) (:by |root) (:id |HyYgtpEaGleaf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |either) (:type :leaf) (:at 1614526527322) (:by |B1y7Rc-Zz)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |:router) (:type :leaf) (:at 1525106930860) (:by |root) (:id |HyLFeYpEaG)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |either) (:type :leaf) (:at 1614526604033) (:by |B1y7Rc-Zz)
                                      |T $ {} (:text |store) (:type :leaf) (:at 1525106931558) (:by |root) (:id |HkNigK646z)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1614526605264) (:by |B1y7Rc-Zz)
                                        :type :expr
                                        :at 1614526604932
                                        :by |B1y7Rc-Zz
                                    :type :expr
                                    :at 1614526601906
                                    :by |B1y7Rc-Zz
                                :type :expr
                                :at 1525106929915
                                :by |root
                                :id |Skg5etaNTM
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1614526528120) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614526527790
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1614526526235
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1525106928554
                        :by |root
                        :id |HyYgtpEaG
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |router-data) (:type :leaf) (:at 1525106935393) (:by |root) (:id |Sye6lY64aMleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:data) (:type :leaf) (:at 1525106936827) (:by |root) (:id |r1u1WKTNTz)
                              |j $ {} (:text |router) (:type :leaf) (:at 1525106937665) (:by |root) (:id |SkMW-tpE6M)
                            :type :expr
                            :at 1525106935675
                            :by |root
                            :id |H1eWtaNTz
                        :type :expr
                        :at 1525106933346
                        :by |root
                        :id |Sye6lY64aM
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |rkzr9UggCHW
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S10HqUelASb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |nil?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryeLc8egCS-)
                          |j $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1-LcUggCrZ)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |rJJIc8gg0BZ
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |comp-offline) (:type :leaf) (:at 1521951417580) (:by |root) (:id |HyYZehIDnvM)
                        :type :expr
                        :at 1521951403873
                        :by |root
                        :id |rJE2zoVqz
                      |v $ {}
                        :data $ {}
                          |yT $ {}
                            :data $ {}
                              |D $ {} (:text |when) (:type :leaf) (:at 1521911507241) (:by |root) (:id |rkgPCLW49z)
                              |L $ {} (:text |dev?) (:type :leaf) (:at 1521911504664) (:by |root) (:id |S1-_CLWN5M)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-reel) (:type :leaf) (:at 1507828712159) (:by |root) (:id |BJgRkVX62Wleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:reel-length) (:type :leaf) (:at 1507830262253) (:by |root) (:id |HyBgV7T2Z)
                                      |j $ {} (:text |store) (:type :leaf) (:at 1507829104010) (:by |root) (:id |S1MvOr7a2Z)
                                    :type :expr
                                    :at 1507829101137
                                    :by |root
                                    :id |HylruBmT3-
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1507828722268) (:by |root) (:id |ByxdeN7anb)
                                    :type :expr
                                    :at 1507828721052
                                    :by |root
                                    :id |ByteVmTnZ
                                :type :expr
                                :at 1507828710405
                                :by |root
                                :id |BJgRkVX62W
                            :type :expr
                            :at 1521911502552
                            :by |root
                            :id |rkvCI-NcM
                          |T $ {} (:text |div) (:type :leaf) (:at 1626339681147) (:by |B1y7Rc-Zz) (:id |r1mvc8lgRH-)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJHD5UxeCHZ)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkwD58ggCr-)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |merge) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SktwcIxlCS-)
                                      |j $ {} (:text |ui/global) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hk9PqUlg0Bb)
                                      |r $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkjD9Lel0B-)
                                      |v $ {} (:text |ui/column) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJ3vcUegASZ)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |rkdw5Lgg0rW
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |B1Uwq8gxArb
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |r1VPqLxxRrb
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |comp-navigation) (:type :leaf) (:at 1523120265747) (:by |root) (:id |SyAvc8lgCB-)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:logged-in?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkedq8xxAB-)
                                  |j $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJ-_cLge0SW)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |rkyu9UglRHZ
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:count) (:type :leaf) (:at 1523120357277) (:by |root) (:id |SJx9JF_Ljz)
                                  |j $ {} (:text |store) (:type :leaf) (:at 1523120358953) (:by |root) (:id |rkf6kYOIiM)
                                :type :expr
                                :at 1523120353961
                                :by |root
                                :id |BkW5yKdLjM
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |r1pw9LelCr-
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJVYcUxlRrZ)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:logged-in?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkUtqUxg0HZ)
                                  |j $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1Dtq8lxArb)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |S1rK5UggABZ
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |case-default) (:type :leaf) (:at 1624471743485) (:by |B1y7Rc-Zz) (:id |rkbqq8xgAHb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:name) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJX958ggAS-)
                                      |j $ {} (:text |router) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkE558leAH-)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |rkz5q8eeRH-
                                  |l $ {}
                                    :data $ {}
                                      |T $ {} (:text |<>) (:type :leaf) (:at 1624471744539) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text |router) (:type :leaf) (:at 1624471744539) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1624471744539
                                    :by |B1y7Rc-Zz
                                  |n $ {}
                                    :data $ {}
                                      |T $ {} (:text |:home) (:type :leaf) (:at 1525106921967) (:by |root) (:id |H11lKp4Tzleaf)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |div) (:type :leaf) (:at 1615983411413) (:by |B1y7Rc-Zz)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1615983411979) (:by |B1y7Rc-Zz)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:style) (:type :leaf) (:at 1615984834879) (:by |B1y7Rc-Zz)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1615984835584) (:by |B1y7Rc-Zz)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:padding) (:type :leaf) (:at 1615984838548) (:by |B1y7Rc-Zz)
                                                          |j $ {} (:text "|\"8px") (:type :leaf) (:at 1615984843071) (:by |B1y7Rc-Zz)
                                                        :type :expr
                                                        :at 1615984836078
                                                        :by |B1y7Rc-Zz
                                                    :type :expr
                                                    :at 1615984835144
                                                    :by |B1y7Rc-Zz
                                                :type :expr
                                                :at 1615984833365
                                                :by |B1y7Rc-Zz
                                            :type :expr
                                            :at 1615983411569
                                            :by |B1y7Rc-Zz
                                          |P $ {}
                                            :data $ {}
                                              |T $ {} (:text |input) (:type :leaf) (:at 1615983414003) (:by |B1y7Rc-Zz)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1615983414651) (:by |B1y7Rc-Zz)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:style) (:type :leaf) (:at 1615983415561) (:by |B1y7Rc-Zz)
                                                      |j $ {} (:text |ui/input) (:type :leaf) (:at 1615983491248) (:by |B1y7Rc-Zz)
                                                    :type :expr
                                                    :at 1615983414866
                                                    :by |B1y7Rc-Zz
                                                  |r $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |:value) (:type :leaf) (:at 1615985095890) (:by |B1y7Rc-Zz)
                                                      |T $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:demo) (:type :leaf) (:at 1615985093771) (:by |B1y7Rc-Zz)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1615985100223) (:by |B1y7Rc-Zz)
                                                        :type :expr
                                                        :at 1615985092894
                                                        :by |B1y7Rc-Zz
                                                    :type :expr
                                                    :at 1615985094926
                                                    :by |B1y7Rc-Zz
                                                :type :expr
                                                :at 1615983414320
                                                :by |B1y7Rc-Zz
                                            :type :expr
                                            :at 1615983412854
                                            :by |B1y7Rc-Zz
                                          |R $ {}
                                            :data $ {}
                                              |T $ {} (:text |=<) (:type :leaf) (:at 1615984822633) (:by |B1y7Rc-Zz)
                                              |j $ {} (:text |8) (:type :leaf) (:at 1615984823004) (:by |B1y7Rc-Zz)
                                              |r $ {} (:text |nil) (:type :leaf) (:at 1615984823512) (:by |B1y7Rc-Zz)
                                            :type :expr
                                            :at 1615984821815
                                            :by |B1y7Rc-Zz
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |<>) (:type :leaf) (:at 1539195347113) (:by |root) (:id |GITrG01MN)
                                              |j $ {} (:text "|\"demo page") (:type :leaf) (:at 1615984827345) (:by |B1y7Rc-Zz) (:id |ZOnJvvM6QZ)
                                            :type :expr
                                            :at 1539195346168
                                            :by |root
                                            :id |1dBRYKfZkG
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |pre) (:type :leaf) (:at 1615984303661) (:by |B1y7Rc-Zz)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |{}) (:type :leaf) (:at 1615984304642) (:by |B1y7Rc-Zz)
                                                  |T $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |:inner-text) (:type :leaf) (:at 1615984307552) (:by |B1y7Rc-Zz)
                                                      |T $ {}
                                                        :data $ {}
                                                          |L $ {} (:text |str) (:type :leaf) (:at 1615984302121) (:by |B1y7Rc-Zz)
                                                          |j $ {} (:text "|\"backend data") (:type :leaf) (:at 1615984270059) (:by |B1y7Rc-Zz)
                                                          |r $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1623719461768) (:by |B1y7Rc-Zz)
                                                              |j $ {} (:text |store) (:type :leaf) (:at 1615984279552) (:by |B1y7Rc-Zz)
                                                            :type :expr
                                                            :at 1615984270835
                                                            :by |B1y7Rc-Zz
                                                        :type :expr
                                                        :at 1615984265859
                                                        :by |B1y7Rc-Zz
                                                    :type :expr
                                                    :at 1615984305087
                                                    :by |B1y7Rc-Zz
                                                :type :expr
                                                :at 1615984304152
                                                :by |B1y7Rc-Zz
                                            :type :expr
                                            :at 1615984262519
                                            :by |B1y7Rc-Zz
                                        :type :expr
                                        :at 1615983410742
                                        :by |B1y7Rc-Zz
                                    :type :expr
                                    :at 1525106918943
                                    :by |root
                                    :id |H11lKp4Tz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:profile) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1LqqUexArZ)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |comp-profile) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJd95UxlRHZ)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:user) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJq558xxRBZ)
                                              |j $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJo558lxAH-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |ByF99IxlCBZ
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:data) (:type :leaf) (:at 1524070840507) (:by |root) (:id |BJxAhYgHnG)
                                              |j $ {} (:text |router) (:type :leaf) (:at 1524070841286) (:by |root) (:id |rJbaYlH2z)
                                            :type :expr
                                            :at 1524070838527
                                            :by |root
                                            :id |rykaYxH2G
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |B1v5cLxgASb
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |rJH998xlAH-
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |BJl4-FpETz
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-login) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BysicIxgAHW)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |>>) (:type :leaf) (:at 1584877243645) (:by |B1y7Rc-Zz) (:id |-nw8MJTDY)
                                      |T $ {} (:text |states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkhocIleRrb)
                                      |j $ {} (:text |:login) (:type :leaf) (:at 1584877245341) (:by |B1y7Rc-Zz) (:id |g-pcBbXVob)
                                    :type :expr
                                    :at 1584877243021
                                    :by |B1y7Rc-Zz
                                    :id |0L-Tvuz0-k
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |BkciqUxgRrZ
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |rkXYc8ll0SW
                          |w $ {}
                            :data $ {}
                              |T $ {} (:text |comp-status-color) (:type :leaf) (:at 1524279211924) (:by |root) (:id |S1hsPmOnMleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1524279214588) (:by |root) (:id |H1BhwXu3M)
                                  |j $ {} (:text |store) (:type :leaf) (:at 1524279215366) (:by |root) (:id |SyevnPQ_nf)
                                :type :expr
                                :at 1524279213788
                                :by |root
                                :id |Bk83D7Ohf
                            :type :expr
                            :at 1524279203814
                            :by |root
                            :id |S1hsPmOnM
                          |x $ {}
                            :data $ {}
                              |D $ {} (:text |when) (:type :leaf) (:at 1521911509225) (:by |root) (:id |Sk-tpU-Vcf)
                              |L $ {} (:text |dev?) (:type :leaf) (:at 1521911495407) (:by |root) (:id |H1xk08W4cG)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |comp-inspect) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkAi58lx0S-)
                                  |j $ {} (:text "|\"Store") (:type :leaf) (:at 1562176377826) (:by |B1y7Rc-Zz) (:id |HJkhq8gxRrb)
                                  |r $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Skln58ge0rb)
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyeT5UllASZ)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:bottom) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryfp9IxgABW)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Skma9UglRr-)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |SJZ6qUleRS-
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:left) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkBp9LllArb)
                                          |j $ {} (:text |0) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryIpcIggCrb)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |r1V65Ixl0HW
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:max-width) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJ_acUlgCrZ)
                                          |j $ {} (:text "|\"100%") (:type :leaf) (:at 1562176491493) (:by |B1y7Rc-Zz) (:id |BkYpc8ee0B-)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |SJv6q8xeAH-
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |r1fqzo4cM
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |S16oqUeeASb
                            :type :expr
                            :at 1521911488967
                            :by |root
                            :id |B1gKaUWV5M
                          |y $ {}
                            :data $ {}
                              |T $ {} (:text |comp-messages) (:type :leaf) (:at 1529230769433) (:by |root) (:id |HkQnqIex0Sb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |get-in) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1B2cLgxCHZ)
                                  |j $ {} (:text |store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryInqUelCHb)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJd398el0rZ)
                                      |j $ {} (:text |:session) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1Yn98xlRrZ)
                                      |r $ {} (:text |:messages) (:type :leaf) (:at 1529230765972) (:by |root) (:id |SJqh5UlgRB-)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |SJw25Uge0BW
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |Bk429LxgCS-
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1529230771976) (:by |root) (:id |H122BnXW7leaf)
                                :type :expr
                                :at 1529230771518
                                :by |root
                                :id |H122BnXW7
                              |p $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1529230773090) (:by |root) (:id |H1m2hB2Q-Qleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |info) (:type :leaf) (:at 1529230775135) (:by |root) (:id |Sk0hr3X-Q)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1529230778336) (:by |root) (:id |Bybgar2m-m)
                                    :type :expr
                                    :at 1529230773925
                                    :by |root
                                    :id |H1gA2B3mWQ
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1529230781631) (:by |root) (:id |HyraS3Q-mleaf)
                                      |j $ {} (:text |:session/remove-message) (:type :leaf) (:at 1529231458145) (:by |root) (:id |SygIaH3Xb7)
                                      |r $ {} (:text |info) (:type :leaf) (:at 1529230813335) (:by |root) (:id |r1eSJU2XZm)
                                    :type :expr
                                    :at 1529230780551
                                    :by |root
                                    :id |HyraS3Q-m
                                :type :expr
                                :at 1529230772453
                                :by |root
                                :id |H1m2hB2Q-Q
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |H1G3c8ll0S-
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |BJGP9LlxRB-
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |ByaHq8gxCSW
                :type :expr
                :at 1500541010211
                :by nil
                :id |HyxSq8llRHb
            :type :expr
            :at 1500541010211
            :by nil
            :id |rJcN9Iee0Bb
          |comp-offline $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1521951399872) (:by |root) (:id |HkWenLP2vM)
              |j $ {} (:text |comp-offline) (:type :leaf) (:at 1519314599832) (:by |root) (:id |BJGx2Iv2Pz)
              |n $ {}
                :data $ {}
                :type :expr
                :at 1521951400852
                :by |root
                :id |r1lZnMsV9z
              |r $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1519314599832) (:by |root) (:id |S14ghIw3Pf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1519314599832) (:by |root) (:id |ByIghIvhwG)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1519314599832) (:by |root) (:id |HJueh8whDf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |merge) (:type :leaf) (:at 1519314599832) (:by |root) (:id |SJcxhUvnvG)
                              |j $ {} (:text |ui/global) (:type :leaf) (:at 1519314599832) (:by |root) (:id |SJogn8whDG)
                              |r $ {} (:text |ui/fullscreen) (:type :leaf) (:at 1519314599832) (:by |root) (:id |Syhe3IwnDf)
                              |v $ {} (:text |ui/column-dispersive) (:type :leaf) (:at 1535564672966) (:by |B1y7Rc-Zz) (:id |S1penIvhwM)
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1535565530129) (:by |B1y7Rc-Zz) (:id |nUIE3znKRk)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:background-color) (:type :leaf) (:at 1535565536637) (:by |B1y7Rc-Zz) (:id |ZIQEbqIdeF)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:theme) (:type :leaf) (:at 1535565542473) (:by |B1y7Rc-Zz) (:id |MkdHaM_v7_)
                                          |j $ {} (:text |config/site) (:type :leaf) (:at 1535565546181) (:by |B1y7Rc-Zz) (:id |r7am1TeON)
                                        :type :expr
                                        :at 1535565541430
                                        :by |B1y7Rc-Zz
                                        :id |D9GGMXGBjd
                                    :type :expr
                                    :at 1535565530397
                                    :by |B1y7Rc-Zz
                                    :id |LAxp5ou8Oi
                                :type :expr
                                :at 1535565529682
                                :by |B1y7Rc-Zz
                                :id |-AFvTS2Xw
                            :type :expr
                            :at 1519314599832
                            :by |root
                            :id |B1FenUDnPM
                        :type :expr
                        :at 1519314599832
                        :by |root
                        :id |rkDg2ID3DM
                    :type :expr
                    :at 1519314599832
                    :by |root
                    :id |H1Sx2Lw3PM
                  |l $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1535565362594) (:by |B1y7Rc-Zz) (:id |z2rRVtYOQleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1535564985316) (:by |B1y7Rc-Zz) (:id |-pfcoBbYO)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1535564987644) (:by |B1y7Rc-Zz) (:id |_5OHbZKdQt)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |{}) (:type :leaf) (:at 1535565373172) (:by |B1y7Rc-Zz) (:id |0cX3axzT-0)
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |:height) (:type :leaf) (:at 1535564988883) (:by |B1y7Rc-Zz) (:id |_jrfZ1j22p)
                                      |j $ {} (:text |0) (:type :leaf) (:at 1535565472380) (:by |B1y7Rc-Zz) (:id |oNrq_1c5jP)
                                    :type :expr
                                    :at 1535564988232
                                    :by |B1y7Rc-Zz
                                    :id |tbKi9HZ-m3
                                :type :expr
                                :at 1535565371727
                                :by |B1y7Rc-Zz
                                :id |qlVM4N8m7_
                            :type :expr
                            :at 1535564985627
                            :by |B1y7Rc-Zz
                            :id |PL7HRl9o2
                        :type :expr
                        :at 1535564984947
                        :by |B1y7Rc-Zz
                        :id |fp9nHzVG-C
                    :type :expr
                    :at 1535564983624
                    :by |B1y7Rc-Zz
                    :id |z2rRVtYOQ
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1535564681122) (:by |B1y7Rc-Zz) (:id |Fr2RBAP3Wleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1535564681741) (:by |B1y7Rc-Zz) (:id |bxXTMaSmzT)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1535564682940) (:by |B1y7Rc-Zz) (:id |CXGFQrJdrI)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1535564683549) (:by |B1y7Rc-Zz) (:id |tzLQL21KFG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:background-image) (:type :leaf) (:at 1535564692026) (:by |B1y7Rc-Zz) (:id |dAStA0OYDH)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1535564693703) (:by |B1y7Rc-Zz) (:id |VzZwtZoO6O)
                                          |j $ {} (:text "|\"url(") (:type :leaf) (:at 1535564698133) (:by |B1y7Rc-Zz) (:id |tJv55qj8Zk)
                                          |n $ {}
                                            :data $ {}
                                              |T $ {} (:text |:icon) (:type :leaf) (:at 1535564708041) (:by |B1y7Rc-Zz) (:id |4lGaBpyWK2)
                                              |j $ {} (:text |config/site) (:type :leaf) (:at 1535564775736) (:by |B1y7Rc-Zz) (:id |sGz47mkdM)
                                            :type :expr
                                            :at 1535564699933
                                            :by |B1y7Rc-Zz
                                            :id |nsZZQVVLv
                                          |r $ {} (:text "|\")") (:type :leaf) (:at 1535564696349) (:by |B1y7Rc-Zz) (:id |6N8V6yQKRt)
                                        :type :expr
                                        :at 1535564692507
                                        :by |B1y7Rc-Zz
                                        :id |_Q8bCAx9n7
                                    :type :expr
                                    :at 1535564683815
                                    :by |B1y7Rc-Zz
                                    :id |dVh-zN_TPb
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:width) (:type :leaf) (:at 1535564728738) (:by |B1y7Rc-Zz) (:id |5egZ0bR0Ileaf)
                                      |j $ {} (:text |128) (:type :leaf) (:at 1535565090611) (:by |B1y7Rc-Zz) (:id |ef8YU_bZh)
                                    :type :expr
                                    :at 1535564726919
                                    :by |B1y7Rc-Zz
                                    :id |5egZ0bR0I
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:height) (:type :leaf) (:at 1535564736588) (:by |B1y7Rc-Zz) (:id |K_yxszCR3zleaf)
                                      |j $ {} (:text |128) (:type :leaf) (:at 1535565093711) (:by |B1y7Rc-Zz) (:id |c5KZ_3dEVg)
                                    :type :expr
                                    :at 1535564733832
                                    :by |B1y7Rc-Zz
                                    :id |K_yxszCR3z
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:background-size) (:type :leaf) (:at 1535564745512) (:by |B1y7Rc-Zz) (:id |zidWccE-tZleaf)
                                      |j $ {} (:text |:contain) (:type :leaf) (:at 1535564749164) (:by |B1y7Rc-Zz) (:id |XvrhwspwQ)
                                    :type :expr
                                    :at 1535564741439
                                    :by |B1y7Rc-Zz
                                    :id |zidWccE-tZ
                                :type :expr
                                :at 1535564683257
                                :by |B1y7Rc-Zz
                                :id |2Evw3L3U1J
                            :type :expr
                            :at 1535564681981
                            :by |B1y7Rc-Zz
                            :id |T3goXWla86
                        :type :expr
                        :at 1535564681371
                        :by |B1y7Rc-Zz
                        :id |QCgP6c48Rw
                    :type :expr
                    :at 1535564675845
                    :by |B1y7Rc-Zz
                    :id |Fr2RBAP3W
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1535565436682) (:by |B1y7Rc-Zz) (:id |SJkll2LP2wM)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1519314599832) (:by |root) (:id |HkbeenIw3wf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1519314599832) (:by |root) (:id |Symgxn8v2vG)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519314599832) (:by |root) (:id |SkHxlhUv2vz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:cursor) (:type :leaf) (:at 1519314599832) (:by |root) (:id |S1Pee2UD3wz)
                                      |j $ {} (:text |:pointer) (:type :leaf) (:at 1519314599832) (:by |root) (:id |HyOgl2IvnPM)
                                    :type :expr
                                    :at 1519314599832
                                    :by |root
                                    :id |H1Lgg3UwhPz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:line-height) (:type :leaf) (:at 1535565243041) (:by |B1y7Rc-Zz) (:id |O56zdbQMDleaf)
                                      |j $ {} (:text "|\"32px") (:type :leaf) (:at 1535565498969) (:by |B1y7Rc-Zz) (:id |3uSFrdhbOK)
                                    :type :expr
                                    :at 1535565239666
                                    :by |B1y7Rc-Zz
                                    :id |lWtf3D3AoP
                                :type :expr
                                :at 1519314599832
                                :by |root
                                :id |rkVlg3LDnDG
                            :type :expr
                            :at 1519314599832
                            :by |root
                            :id |Syfgx28wnPf
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1519314599832) (:by |root) (:id |Hy9xl28D2PG)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |fn) (:type :leaf) (:at 1584871335398) (:by |B1y7Rc-Zz) (:id |LdFNplXRc)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1584871336535) (:by |B1y7Rc-Zz) (:id |WhyFNjJB_E)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1584871337567) (:by |B1y7Rc-Zz) (:id |nbkgz6-ZOJ)
                                    :type :expr
                                    :at 1584871335614
                                    :by |B1y7Rc-Zz
                                    :id |wTeBvUMQM9
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1584871334285) (:by |B1y7Rc-Zz) (:id |r1GZl2Lw2wG)
                                      |j $ {} (:text |:effect/connect) (:type :leaf) (:at 1519314599832) (:by |root) (:id |rkmZln8v2wG)
                                      |r $ {} (:text |nil) (:type :leaf) (:at 1519314599832) (:by |root) (:id |HJNWe28w3wG)
                                    :type :expr
                                    :at 1519314599832
                                    :by |root
                                    :id |S1mufs49z
                                :type :expr
                                :at 1584871334795
                                :by |B1y7Rc-Zz
                                :id |XUbtqCVDZv
                            :type :expr
                            :at 1519314599832
                            :by |root
                            :id |SkKle2LPnvf
                        :type :expr
                        :at 1519314599832
                        :by |root
                        :id |BJgex3Lw3Pf
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1519314599832) (:by |root) (:id |r1Ube2LP2PM)
                          |j $ {} (:text "|\"No connection...") (:type :leaf) (:at 1562176386393) (:by |B1y7Rc-Zz) (:id |r1DWxhIP3wG)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkxN5IggCSZ)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-family) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ByzE9Lxe0BW)
                                  |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1535565688657) (:by |B1y7Rc-Zz) (:id |Skm4cUlgRrZ)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |BkZ4qUxgABZ
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:font-size) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkuNcLlxRrW)
                                  |j $ {} (:text |24) (:type :leaf) (:at 1535565156897) (:by |B1y7Rc-Zz) (:id |SJYNcUxxASZ)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |ByvVqIxlCBW
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |ryuSziE9f
                        :type :expr
                        :at 1519314599832
                        :by |root
                        :id |r1r-lhLPnvf
                    :type :expr
                    :at 1519314599832
                    :by |root
                    :id |HyRx3IDnPM
                :type :expr
                :at 1519314599832
                :by |root
                :id |rkQx2Lv3vz
            :type :expr
            :at 1519314599832
            :by |root
            :id |rJlxhID3DM
          |comp-status-color $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1524279218316) (:by |root) (:id |S1ZK3DXd3G)
              |j $ {} (:text |comp-status-color) (:type :leaf) (:at 1524279216692) (:by |root) (:id |SkzYhwm_3f)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |color) (:type :leaf) (:at 1524279220380) (:by |root) (:id |HkWi3Dmd2G)
                :type :expr
                :at 1524279216692
                :by |root
                :id |SkmYnwXdnM
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1524279221503) (:by |root) (:id |rJgTnPmu2Gleaf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1524279222145) (:by |root) (:id |ByA3Dm_2f)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1524279223333) (:by |root) (:id |BJmAnP7_nz)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |let) (:type :leaf) (:at 1533835132715) (:by |B1y7Rc-Zz) (:id |gdqZhoJ9D)
                              |L $ {}
                                :data $ {}
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |size) (:type :leaf) (:at 1533835134066) (:by |B1y7Rc-Zz) (:id |VZJGRva7JQ)
                                      |j $ {} (:text |24) (:type :leaf) (:at 1533835156000) (:by |B1y7Rc-Zz) (:id |dH663gATGE)
                                    :type :expr
                                    :at 1533835133406
                                    :by |B1y7Rc-Zz
                                    :id |-QOGS9FksS
                                :type :expr
                                :at 1533835132973
                                :by |B1y7Rc-Zz
                                :id |UKFzdk9D7f
                              |T $ {}
                                :data $ {}
                                  |yT $ {}
                                    :data $ {}
                                      |T $ {} (:text |:background-color) (:type :leaf) (:at 1524279265891) (:by |root) (:id |S1eXJd7_3Gleaf)
                                      |j $ {} (:text |color) (:type :leaf) (:at 1524279319762) (:by |root) (:id |S1WkQuQuhz)
                                    :type :expr
                                    :at 1524279259074
                                    :by |root
                                    :id |S1eXJd7_3G
                                  |yj $ {}
                                    :data $ {}
                                      |T $ {} (:text |:border-radius) (:type :leaf) (:at 1524279306393) (:by |root) (:id |B1e3Z_Xd2Mleaf)
                                      |j $ {} (:text "|\"50%") (:type :leaf) (:at 1533835148624) (:by |B1y7Rc-Zz) (:id |Hy7f_md3z)
                                    :type :expr
                                    :at 1524279300007
                                    :by |root
                                    :id |B1e3Z_Xd2M
                                  |yr $ {}
                                    :data $ {}
                                      |T $ {} (:text |:opacity) (:type :leaf) (:at 1524279323711) (:by |root) (:id |BkxzQO7_3Gleaf)
                                      |j $ {} (:text |0.6) (:type :leaf) (:at 1533835161153) (:by |B1y7Rc-Zz) (:id |B1-VXdQ_3G)
                                    :type :expr
                                    :at 1524279322054
                                    :by |root
                                    :id |BkxzQO7_3G
                                  |yv $ {}
                                    :data $ {}
                                      |T $ {} (:text |:pointer-events) (:type :leaf) (:at 1533835177358) (:by |B1y7Rc-Zz) (:id |VRmHRcaoLvleaf)
                                      |j $ {} (:text |:none) (:type :leaf) (:at 1533835178211) (:by |B1y7Rc-Zz) (:id |9jBAmSdCfv)
                                    :type :expr
                                    :at 1533835167955
                                    :by |B1y7Rc-Zz
                                    :id |VRmHRcaoLv
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1524279223903) (:by |root) (:id |H1S1TD7_2z)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:width) (:type :leaf) (:at 1524279228958) (:by |root) (:id |BJMlTDQu3z)
                                      |j $ {} (:text |size) (:type :leaf) (:at 1533835137743) (:by |B1y7Rc-Zz) (:id |HJIpvXuhG)
                                    :type :expr
                                    :at 1524279224175
                                    :by |root
                                    :id |r1XlTDX_nf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:height) (:type :leaf) (:at 1524279232432) (:by |root) (:id |rJfDavmu3Gleaf)
                                      |j $ {} (:text |size) (:type :leaf) (:at 1533835138984) (:by |B1y7Rc-Zz) (:id |ByLuavmu3M)
                                    :type :expr
                                    :at 1524279231457
                                    :by |root
                                    :id |rJfDavmu3G
                                  |v $ {}
                                    :data $ {}
                                      |D $ {} (:text |:position) (:type :leaf) (:at 1524279242067) (:by |root) (:id |rJxCP7d2f)
                                      |T $ {} (:text |:absolute) (:type :leaf) (:at 1524279236076) (:by |root) (:id |SycaPQO2fleaf)
                                    :type :expr
                                    :at 1524279233724
                                    :by |root
                                    :id |SycaPQO2f
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:bottom) (:type :leaf) (:at 1533835259111) (:by |B1y7Rc-Zz) (:id |B1QAPmuhGleaf)
                                      |j $ {} (:text |60) (:type :leaf) (:at 1524279295251) (:by |root) (:id |HyN0DXu3G)
                                    :type :expr
                                    :at 1524279242693
                                    :by |root
                                    :id |B1QAPmuhG
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:left) (:type :leaf) (:at 1533835114388) (:by |B1y7Rc-Zz) (:id |SyxSAwm_2zleaf)
                                      |j $ {} (:text |8) (:type :leaf) (:at 1524279252706) (:by |root) (:id |r1aCw7d2f)
                                    :type :expr
                                    :at 1524279244626
                                    :by |root
                                    :id |SyxSAwm_2z
                                :type :expr
                                :at 1524279223555
                                :by |root
                                :id |SyeTD7dnz
                            :type :expr
                            :at 1533835122554
                            :by |B1y7Rc-Zz
                            :id |02sFGkmU4
                        :type :expr
                        :at 1524279222434
                        :by |root
                        :id |r1ER2vQ_3G
                    :type :expr
                    :at 1524279221753
                    :by |root
                    :id |rJlA3DXOhf
                :type :expr
                :at 1524279221052
                :by |root
                :id |rJgTnPmu2G
            :type :expr
            :at 1524279216692
            :by |root
            :id |Sket2DQd3f
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541010211
          :by nil
          :id |S1om9LgxCBZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJxc8xl0HZ)
            |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkZcLgxAB-)
            |v $ {}
              :data $ {}
                |yyj $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1615983436266) (:by |B1y7Rc-Zz) (:id |rJGbRHh7W7)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1529230796499) (:by |root) (:id |r1ZEAH2m-m)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1529230797248) (:by |root) (:id |ByBAH37Zm)
                  :type :expr
                  :at 1529230793085
                  :by |root
                  :id |B1Z0rnQWm
                |yyr $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1535564718729) (:by |B1y7Rc-Zz) (:id |9xYrE_G3ic)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1535564719687) (:by |B1y7Rc-Zz) (:id |ccmXGZ69Z1)
                    |v $ {} (:text |config) (:type :leaf) (:at 1535564721387) (:by |B1y7Rc-Zz) (:id |agsiaMgXOQ)
                  :type :expr
                  :at 1535564714854
                  :by |B1y7Rc-Zz
                  :id |62fxkh4Uk4
                |yD $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507816112686) (:by |root) (:id |H1GOhGephb)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ)
                      :type :expr
                      :at 1507816113982
                      :by |root
                      :id |rk-53Mlah-
                  :type :expr
                  :at 1507816109319
                  :by |root
                  :id |Sklr2Mg6n-
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.navigation) (:type :leaf) (:at 1523120275079) (:by |root) (:id |B1-f5UgeABb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkzM98gxRrZ)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-navigation) (:type :leaf) (:at 1523120276563) (:by |root) (:id |rkBfcLggCBb)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |Bymz5LglArW
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |H1kGc8glRHW
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.profile) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1_fq8geCHb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryFz9LglCHb)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-profile) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H12z9LxxCHW)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |r1qfqUlxASb
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |HJ8M5UeeCS-
                |yr $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.login) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hkk7qUgxAr-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJg798xxAHW)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-login) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1Qmq8gxCrW)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |HJ-m9Ueg0SW
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |Bypz9LxxRSW
                |yv $ {}
                  :data $ {}
                    |j $ {} (:text |respo-message.comp.messages) (:type :leaf) (:at 1529230826824) (:by |root) (:id |HkIQ9Iel0Hb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryv7cIgeCrZ)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-messages) (:type :leaf) (:at 1529230829559) (:by |root) (:id |BJcQcUxxASW)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |Hk_7c8eg0rW
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |SyE7qLleCHW
                |yx $ {}
                  :data $ {}
                    |j $ {} (:text |cumulo-reel.comp.reel) (:type :leaf) (:at 1543253312413) (:by |B1y7Rc-Zz) (:id |ry7AeNmT3b)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507828731528) (:by |root) (:id |H1bQW4762Z)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-reel) (:type :leaf) (:at 1507828733743) (:by |root) (:id |Bk44ZNXT2Z)
                      :type :expr
                      :at 1507828731735
                      :by |root
                      :id |Sk-NbNmT3W
                  :type :expr
                  :at 1507828725931
                  :by |root
                  :id |BklAlV7a2Z
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527789167264) (:by |root) (:id |SJMe6IZ45z)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1521911483589) (:by |root) (:id |B1GaI-V5M)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |dev?) (:type :leaf) (:at 1521911485489) (:by |root) (:id |rJ4V6Lb49f)
                      :type :expr
                      :at 1521911483778
                      :by |root
                      :id |BJb4T8ZNcM
                  :type :expr
                  :at 1521911479054
                  :by |root
                  :id |BygkTL-EqM
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |hsl.core) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1Gxq8xgCB-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |By4lc8gxCB-
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |SylgqLee0B-
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW)
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |ryvl5IllRSb
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540962164790) (:by |root) (:id |H189Igg0S-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJw9LexRS-)
                    |v $ {}
                      :data $ {}
                        |yT $ {} (:text |input) (:type :leaf) (:at 1615983477070) (:by |B1y7Rc-Zz)
                        |yj $ {} (:text |pre) (:type :leaf) (:at 1615984295300) (:by |B1y7Rc-Zz)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkqqIggASZ)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SysqUxxRH-)
                        |t $ {} (:text |>>) (:type :leaf) (:at 1584877250857) (:by |B1y7Rc-Zz) (:id |H5Vz1GDH0u)
                        |v $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ)
                        |x $ {} (:text |span) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkaqLel0H-)
                        |y $ {} (:text |button) (:type :leaf) (:at 1507815955483) (:by |root) (:id |ryjGzeahb)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |B1_98eeRSb
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |B1gpZxc3yG
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.inspect) (:type :leaf) (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-inspect) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |rk2ZqUlx0SZ
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |rJu-cIxlRSZ
              :type :expr
              :at 1500541010211
              :by nil
              :id |SkCq8lx0rb
          :type :expr
          :at 1500541010211
          :by nil
          :id |B15IxeRH-
      |app.schema $ {}
        :defs $ {}
          |user $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hy9weU-x0SW)
              |j $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1jDx8bx0SZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkpPl8ZlRrW)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:name) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryJul8beCrb)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJlOxIWgRBW)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HkAPxIZxRB-
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1M_gIWxCSZ)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rk7_eIbxRB-)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HkbdlLZlRSW
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:nickname) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HySOgLWeASW)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByIue8Ze0B-)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |B14ug8bg0rb
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:avatar) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyudlUWeCBW)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJYdlLbe0BW)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |H1PulIbx0Hb
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1jOeUbxArW)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hynug8bxCSZ)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HJcOxIbgAHW
                :type :expr
                :at 1500541255553
                :by nil
                :id |rkhPxUWx0r-
            :type :expr
            :at 1500541255553
            :by nil
            :id |BJKwxIbx0rZ
          |session $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1hseLZlCBW)
              |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJpslIZxAHW)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B11neI-gAH-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:user-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rybnxUWe0BZ)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryf2xIbxAHZ)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |Byx2e8-e0rZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S143xIblCrZ)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1ShgL-l0rZ)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |B1m2eIbxAHZ
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:nickname) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyPheIZxCSZ)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1_hx8ZeRrW)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HJU2gU-lRrb
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HycngIbeCrb)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |do) (:type :leaf) (:at 1538886507646) (:by |root) (:id |sM5ZFH9Ojs)
                          |L $ {} (:text |router) (:type :leaf) (:at 1538886508475) (:by |root) (:id |Ot9nzPxAuB)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hy23gUZgRH-)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:name) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1C3lUWgCHb)
                                  |j $ {} (:text |:home) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJkalLZxArW)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |H1T2eUZeAH-
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1baxLZeCr-)
                                  |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyGpe8WgAHZ)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |HyxTeL-gRSb
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bk4pe8ZgCBZ)
                                  |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJB6l8-g0H-)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |rk7TlUWl0SW
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |HyjhgL-xArW
                        :type :expr
                        :at 1538886507054
                        :by |root
                        :id |6GeGDz-Mrh
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |rkthlU-gCHW
                  |y $ {}
                    :data $ {}
                      |T $ {} (:text |:messages) (:type :leaf) (:at 1529230759501) (:by |root) (:id |HyPTeIZx0SZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1529230760716) (:by |root) (:id |SyWg2HnQZQ)
                        :type :expr
                        :at 1529230760396
                        :by |root
                        :id |HJGlhSh7Z7
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |SyL6eIbgRr-
                :type :expr
                :at 1500541255553
                :by nil
                :id |SkCilU-eCSZ
            :type :expr
            :at 1500541255553
            :by nil
            :id |HyiseLZlCB-
          |database $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkjcxUbgAH-)
              |j $ {} (:text |database) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryhqlIZxRSb)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJCqxL-gASW)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkgjlUZxArb)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |do) (:type :leaf) (:at 1538886499001) (:by |root) (:id |u-mi7TeZu)
                          |L $ {} (:text |session) (:type :leaf) (:at 1538886500387) (:by |root) (:id |DUAFs31KF4)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1GseIWx0S-)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |H1WsxIbeCSW
                        :type :expr
                        :at 1538886498428
                        :by |root
                        :id |RC6TbFtiBd
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |SJJolIbeArb
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:users) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJ4ix8beAB-)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |do) (:type :leaf) (:at 1538886502106) (:by |root) (:id |-QMTWQpKkD)
                          |L $ {} (:text |user) (:type :leaf) (:at 1538886502625) (:by |root) (:id |2DKXhsjt7P)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJUjl8bg0SW)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |r1BieLbe0rZ
                        :type :expr
                        :at 1538886501540
                        :by |root
                        :id |Rx2kJHudR
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |Symjg8bg0BZ
                :type :expr
                :at 1500541255553
                :by nil
                :id |S169e8WeAH-
            :type :expr
            :at 1500541255553
            :by nil
            :id |S1c5lLblCBZ
          |router $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJR_lI-xRBZ)
              |j $ {} (:text |router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJyFl8-l0B-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJbYl8bxCr-)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:name) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJQtlI-x0rW)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bk4teL-lRS-)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HyzFe8blRHZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1IYxUWlCBW)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJPKlIbeCBZ)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |SyrYlL-lRBZ
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJtFx8ZeRr-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJstxIbeAS-)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |SJ9KlUZeCSb
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |Hy_tgU-eAHW
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1aYe8Wg0rW)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1CteIWlCrZ)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |Sk2YxIbg0Hb
                :type :expr
                :at 1500541255553
                :by nil
                :id |HyeKlU-gCHb
            :type :expr
            :at 1500541255553
            :by nil
            :id |BJaugUbeABb
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |SJuPg8bxRH-
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bk8PgIbeCr-)
            |j $ {} (:text |app.schema) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyDDxIWeRrb)
          :type :expr
          :at 1500541255553
          :by nil
          :id |B1Swe8bxAr-
      |app.server $ {}
        :defs $ {}
          |*initial-db $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1614526157477) (:by |B1y7Rc-Zz) (:id |Hyblze8WlCBb)
              |j $ {} (:text |*initial-db) (:type :leaf) (:at 1614526164437) (:by |B1y7Rc-Zz)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |merge-local-edn!) (:type :leaf) (:at 1544725864786) (:by |B1y7Rc-Zz) (:id |1fTXAyiXXleaf)
                  |j $ {} (:text |schema/database) (:type :leaf) (:at 1544725868264) (:by |B1y7Rc-Zz) (:id |K3wVCD18U3)
                  |n $ {} (:text |storage-file) (:type :leaf) (:at 1544855364586) (:by |B1y7Rc-Zz) (:id |xJOF49YQFF)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1544725874760) (:by |B1y7Rc-Zz) (:id |ONEOEyFqo)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |found?) (:type :leaf) (:at 1544725877115) (:by |B1y7Rc-Zz) (:id |sOhJiryrYa)
                        :type :expr
                        :at 1544725875447
                        :by |B1y7Rc-Zz
                        :id |6uZVi7V4T1
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1544725883183) (:by |B1y7Rc-Zz) (:id |LHHbAs9qEleaf)
                          |j $ {} (:text |found?) (:type :leaf) (:at 1544725885496) (:by |B1y7Rc-Zz) (:id |gb8BhzBO-o)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |println) (:type :leaf) (:at 1544725887504) (:by |B1y7Rc-Zz) (:id |Pk5-STb6D)
                              |j $ {} (:text "|\"Found local EDN data") (:type :leaf) (:at 1544725897466) (:by |B1y7Rc-Zz) (:id |28QZ3-7rm)
                            :type :expr
                            :at 1544725886712
                            :by |B1y7Rc-Zz
                            :id |5p7kbcbG9E
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |println) (:type :leaf) (:at 1544725901534) (:by |B1y7Rc-Zz) (:id |11XotM4b9Jleaf)
                              |j $ {} (:text "|\"Found no data") (:type :leaf) (:at 1544725906442) (:by |B1y7Rc-Zz) (:id |FnLasa3zHq)
                            :type :expr
                            :at 1544725899425
                            :by |B1y7Rc-Zz
                            :id |11XotM4b9J
                        :type :expr
                        :at 1544725880584
                        :by |B1y7Rc-Zz
                        :id |LHHbAs9qE
                    :type :expr
                    :at 1544725874490
                    :by |B1y7Rc-Zz
                    :id |otPyiizkv
                :type :expr
                :at 1544725857409
                :by |B1y7Rc-Zz
                :id |1fTXAyiXX
            :type :expr
            :at 1500541255553
            :by nil
            :id |HkexMeUZlCH-
          |persist-db! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1521797538383) (:by |root) (:id |HJWwitHG5M)
              |j $ {} (:text |persist-db!) (:type :leaf) (:at 1521797534647) (:by |root) (:id |S1GwoYHf5M)
              |n $ {}
                :data $ {}
                :type :expr
                :at 1521797539426
                :by |root
                :id |SJZiiKrM9z
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1529516707700) (:by |root) (:id |ryxsjMM_WQ)
                  |j $ {}
                    :data $ {}
                      |5 $ {}
                        :data $ {}
                          |T $ {} (:text |file-content) (:type :leaf) (:at 1529516842334) (:by |root) (:id |HJp7Xf_b7leaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1623719479122) (:by |B1y7Rc-Zz) (:id |BktPitHG9M)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |assoc) (:type :leaf) (:at 1521797534647) (:by |root) (:id |S1ovsKrz9M)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:db) (:type :leaf) (:at 1521797534647) (:by |root) (:id |r1pwiYBzqf)
                                      |j $ {} (:text |@*reel) (:type :leaf) (:at 1521797534647) (:by |root) (:id |B1CPstHfqz)
                                    :type :expr
                                    :at 1521797534647
                                    :by |root
                                    :id |rJhPjtBG5f
                                  |r $ {} (:text |:sessions) (:type :leaf) (:at 1521797534647) (:by |root) (:id |rk1lvjtrM9M)
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1521797534647) (:by |root) (:id |S1WgviYHzqf)
                                    :type :expr
                                    :at 1521797534647
                                    :by |root
                                    :id |HkgxDiFSM5G
                                :type :expr
                                :at 1521797534647
                                :by |root
                                :id |ry5PsFrzqz
                            :type :expr
                            :at 1521797534647
                            :by |root
                            :id |H1lPEXMdbm
                        :type :expr
                        :at 1529516837153
                        :by |root
                        :id |HJp7Xf_b7
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |storage-path) (:type :leaf) (:at 1529517003417) (:by |root) (:id |Hyg6aXzOZQleaf)
                          |r $ {} (:text |storage-file) (:type :leaf) (:at 1544855326234) (:by |B1y7Rc-Zz) (:id |Xmqz1KzSM1)
                        :type :expr
                        :at 1529516997256
                        :by |root
                        :id |Hyg6aXzOZQ
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |backup-path) (:type :leaf) (:at 1529516720230) (:by |root) (:id |rklm3fzu-X)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |get-backup-path!) (:type :leaf) (:at 1544726122581) (:by |B1y7Rc-Zz) (:id |MjTTAnH7B-h)
                            :type :expr
                            :at 1544726142555
                            :by |B1y7Rc-Zz
                            :id |p6u8UCoye
                        :type :expr
                        :at 1529516714998
                        :by |root
                        :id |rJ7nMGu-7
                    :type :expr
                    :at 1529516711063
                    :by |root
                    :id |rklJ3fMdWQ
                  |n $ {}
                    :data $ {}
                      |D $ {} (:text |write-mildly!) (:type :leaf) (:at 1544377357428) (:by |B1y7Rc-Zz) (:id |hE_Ubmzhi)
                      |f $ {} (:text |storage-path) (:type :leaf) (:at 1529517008985) (:by |root) (:id |HkgPAmzOZQ)
                      |r $ {} (:text |file-content) (:type :leaf) (:at 1529516853625) (:by |root) (:id |rkx3NXGuW7)
                    :type :expr
                    :at 1521797534647
                    :by |root
                    :id |Skc4Xf_-X
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |write-mildly!) (:type :leaf) (:at 1544377358310) (:by |B1y7Rc-Zz) (:id |HyVvstrz5f)
                      |f $ {} (:text |backup-path) (:type :leaf) (:at 1529516865857) (:by |root) (:id |S19SQGu-X)
                      |r $ {} (:text |file-content) (:type :leaf) (:at 1529516862015) (:by |root) (:id |ByrBQGuW7)
                    :type :expr
                    :at 1521797534647
                    :by |root
                    :id |SJl97XMuWQ
                :type :expr
                :at 1529516703080
                :by |root
                :id |ryePizzuZX
            :type :expr
            :at 1521797534647
            :by |root
            :id |BkgwiFHf5M
          |sync-clients! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1nAfeLblCrW)
              |j $ {} (:text |sync-clients!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkaRMx8WxCrZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |reel) (:type :leaf) (:at 1507829969369) (:by |root) (:id |SJ11Qx8beRS-)
                :type :expr
                :at 1500541255553
                :by nil
                :id |Hk0CGgLbgASW
              |v $ {}
                :data $ {}
                  |T $ {} (:text |wss-each!) (:type :leaf) (:at 1544724897995) (:by |B1y7Rc-Zz) (:id |T2yrk8-Illeaf)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1544724844720) (:by |B1y7Rc-Zz) (:id |5hn71L8RRU)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |sid) (:type :leaf) (:at 1544724846756) (:by |B1y7Rc-Zz) (:id |JisNIWudzU)
                          |j $ {} (:text |socket) (:type :leaf) (:at 1544724848065) (:by |B1y7Rc-Zz) (:id |Dso7lA0jjA)
                        :type :expr
                        :at 1544724845909
                        :by |B1y7Rc-Zz
                        :id |hpKDyxNCRL
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |let) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |J_0Ixz5xfJ)
                          |j $ {}
                            :data $ {}
                              |9 $ {}
                                :data $ {}
                                  |T $ {} (:text |db) (:type :leaf) (:at 1544725017484) (:by |B1y7Rc-Zz) (:id |JUMqX-OU50)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:db) (:type :leaf) (:at 1544725017484) (:by |B1y7Rc-Zz) (:id |8Ij132a7iu)
                                      |j $ {} (:text |reel) (:type :leaf) (:at 1544725017484) (:by |B1y7Rc-Zz) (:id |UtTf4AgiUT)
                                    :type :expr
                                    :at 1544725017484
                                    :by |B1y7Rc-Zz
                                    :id |pT74Gwbhi0
                                :type :expr
                                :at 1544725017484
                                :by |B1y7Rc-Zz
                                :id |7ofwBKl3Ia
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |records) (:type :leaf) (:at 1544725014330) (:by |B1y7Rc-Zz) (:id |UTKBdVYnWi)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:records) (:type :leaf) (:at 1544725014330) (:by |B1y7Rc-Zz) (:id |akUZvRPuI3)
                                      |j $ {} (:text |reel) (:type :leaf) (:at 1544725014330) (:by |B1y7Rc-Zz) (:id |LOeRfmYKEL)
                                    :type :expr
                                    :at 1544725014330
                                    :by |B1y7Rc-Zz
                                    :id |7lcF7LbKqJ
                                :type :expr
                                :at 1544725014330
                                :by |B1y7Rc-Zz
                                :id |OgD9vwuVCD
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |session) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |gGMjKD9jJF)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |get-in) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |bSg2dlV_rB)
                                      |j $ {} (:text |db) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |90UR_4BpVt)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |DuICTvQvLu)
                                          |j $ {} (:text |:sessions) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |-sH_3VE5Hk5)
                                          |r $ {} (:text |sid) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |k7sF2_6K-rI)
                                        :type :expr
                                        :at 1544724852267
                                        :by |B1y7Rc-Zz
                                        :id |vWXa0YTpig
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |QTVEoN1rlf
                                :type :expr
                                :at 1544724852267
                                :by |B1y7Rc-Zz
                                :id |G6pfpnJ0bh
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |old-store) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |QX6SwNpdU9H)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |or) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |5MilEx4cEfP)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |get) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |IckdwHEKrwF)
                                          |j $ {} (:text |@*client-caches) (:type :leaf) (:at 1544725649977) (:by |B1y7Rc-Zz) (:id |hnvZjlN4WtW)
                                          |r $ {} (:text |sid) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |IaH7p47z_ul)
                                        :type :expr
                                        :at 1544724852267
                                        :by |B1y7Rc-Zz
                                        :id |PClysKOgvc1
                                      |r $ {} (:text |nil) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |zaH79krQ9uD)
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |Jaqqe1Gquz-
                                :type :expr
                                :at 1544724852267
                                :by |B1y7Rc-Zz
                                :id |NouQAetNk13
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |new-store) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |qet69uMbYUr)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |twig-container) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |yDCLfI7sZY6)
                                      |j $ {} (:text |db) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |ClDXNR2UT7s)
                                      |r $ {} (:text |session) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |3xWr3SwYowV)
                                      |v $ {} (:text |records) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |n7WtF9Wv7_r)
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |FM9Lko1iOn3
                                :type :expr
                                :at 1544724852267
                                :by |B1y7Rc-Zz
                                :id |CAkC3b628xi
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |changes) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |dryXyJZFaUQ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |diff-twig) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |Nt2NlL176mK)
                                      |j $ {} (:text |old-store) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |LGDD7VDuAap)
                                      |r $ {} (:text |new-store) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |Q6ACOZZM_zs)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |sdtqNuQyj-T)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:key) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |gNjlTIaKLJ0)
                                              |j $ {} (:text |:id) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |xdBe0jQlGAz)
                                            :type :expr
                                            :at 1544724852267
                                            :by |B1y7Rc-Zz
                                            :id |N9xwZI8Sd5E
                                        :type :expr
                                        :at 1544724852267
                                        :by |B1y7Rc-Zz
                                        :id |9B9cFRYegvd
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |_E9tW9fj0hF
                                :type :expr
                                :at 1544724852267
                                :by |B1y7Rc-Zz
                                :id |qLJDPfYg1MA
                            :type :expr
                            :at 1544724852267
                            :by |B1y7Rc-Zz
                            :id |w2c3_UE4bF
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |when) (:type :leaf) (:at 1553328543637) (:by |B1y7Rc-Zz) (:id |4piO7BlKlC)
                              |L $ {} (:text |config/dev?) (:type :leaf) (:at 1553328546908) (:by |B1y7Rc-Zz) (:id |FY6NSTKBB6)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |println) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |CV8V1zOPzpQ)
                                  |j $ {} (:text "|\"Changes for") (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |38Ln4c9zY1Q)
                                  |r $ {} (:text |sid) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |EkJ0EJ9jvdE)
                                  |v $ {} (:text "|\":") (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |Jbg6WlbkeOi)
                                  |x $ {} (:text |changes) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |VwJOdfixghn)
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |count) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |xbGXQbvchDb)
                                      |j $ {} (:text |records) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |_t0BfJ0nT3m)
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |vHwtiMTxsl8
                                :type :expr
                                :at 1544724852267
                                :by |B1y7Rc-Zz
                                :id |s1UkOE5EsGq
                            :type :expr
                            :at 1553328542810
                            :by |B1y7Rc-Zz
                            :id |aGub-HLt9S
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |WqYbRguCr5r)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |not=) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |eFVkICpmk3O)
                                  |j $ {} (:text |changes) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |_oebChAZNhm)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |a5fwQrIqMXM)
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |A8EEqDxTadu
                                :type :expr
                                :at 1544724852267
                                :by |B1y7Rc-Zz
                                :id |1wcqoHLdejV
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |do) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |uyCMD1fRVXI)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |wss-send!) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |edhhUWKr8ns)
                                      |j $ {} (:text |sid) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |Hnp5fNWGG2_)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |58DrwbNACHG)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:kind) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |PA7W6oXX33e)
                                              |j $ {} (:text |:patch) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |1dwDvyf2Eqs)
                                            :type :expr
                                            :at 1544724852267
                                            :by |B1y7Rc-Zz
                                            :id |dflCQSqFPHC
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:data) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |kSCRqhD58o4)
                                              |j $ {} (:text |changes) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |TlsK2V1gzaI)
                                            :type :expr
                                            :at 1544724852267
                                            :by |B1y7Rc-Zz
                                            :id |LxU1_sFNVIE
                                        :type :expr
                                        :at 1544724852267
                                        :by |B1y7Rc-Zz
                                        :id |Nt9dOV-BsWk
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |Em7CJT_wjk1
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |swap!) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |HkCtftj_knx)
                                      |j $ {} (:text |*client-caches) (:type :leaf) (:at 1544725652497) (:by |B1y7Rc-Zz) (:id |rnbVtr1lLE_)
                                      |r $ {} (:text |assoc) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |RtJEI2TOLuk)
                                      |v $ {} (:text |sid) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |LzutOPLyPUJ)
                                      |x $ {} (:text |new-store) (:type :leaf) (:at 1544724852267) (:by |B1y7Rc-Zz) (:id |9TOGzOT7RCz)
                                    :type :expr
                                    :at 1544724852267
                                    :by |B1y7Rc-Zz
                                    :id |QFE8a_xcbVd
                                :type :expr
                                :at 1544724852267
                                :by |B1y7Rc-Zz
                                :id |hR4XGsPX7pN
                            :type :expr
                            :at 1544724852267
                            :by |B1y7Rc-Zz
                            :id |8XkRXlswOS3
                        :type :expr
                        :at 1544724852267
                        :by |B1y7Rc-Zz
                        :id |ZvFRQjRy0Q
                    :type :expr
                    :at 1544724844431
                    :by |B1y7Rc-Zz
                    :id |tYtukMz1bH
                :type :expr
                :at 1544724837933
                :by |B1y7Rc-Zz
                :id |T2yrk8-Il
              |x $ {}
                :data $ {}
                  |T $ {} (:text |new-twig-loop!) (:type :leaf) (:at 1593532341963) (:by |B1y7Rc-Zz) (:id |nAOPfdmY2D)
                :type :expr
                :at 1593532341963
                :by |B1y7Rc-Zz
                :id |nB3YFLiS04
            :type :expr
            :at 1500541255553
            :by nil
            :id |B1jCGxL-gRrW
          |storage-file $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1544855331477) (:by |B1y7Rc-Zz) (:id |fJ-4rqW_kn)
              |j $ {} (:text |storage-file) (:type :leaf) (:at 1544855327492) (:by |B1y7Rc-Zz) (:id |mYes27RYcN)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |path/join) (:type :leaf) (:at 1544855336149) (:by |B1y7Rc-Zz) (:id |ln1WY90ywL)
                  |j $ {} (:text |js/__dirname) (:type :leaf) (:at 1544855340650) (:by |B1y7Rc-Zz) (:id |MvNJALKBev)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-file) (:type :leaf) (:at 1544855346989) (:by |B1y7Rc-Zz) (:id |6z4oefR9wI)
                      |j $ {} (:text |config/site) (:type :leaf) (:at 1544855349429) (:by |B1y7Rc-Zz) (:id |Crw3ExIA8y)
                    :type :expr
                    :at 1544855342745
                    :by |B1y7Rc-Zz
                    :id |tB4zSFLH4
                :type :expr
                :at 1544855327492
                :by |B1y7Rc-Zz
                :id |Z8uBEzrRrc
            :type :expr
            :at 1544855327492
            :by |B1y7Rc-Zz
            :id |c262Sms_S1
          |*reader-reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1614526704558) (:by |B1y7Rc-Zz) (:id |HkU4MeUWgRrb)
              |j $ {} (:text |*reader-reel) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1wVflUZx0BW)
              |r $ {} (:text |@*reel) (:type :leaf) (:at 1507829929366) (:by |root) (:id |ryzvXS0h3b)
            :type :expr
            :at 1500541255553
            :by nil
            :id |SkrNzg8-eAHb
          |*reel $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1614525683442) (:by |B1y7Rc-Zz) (:id |Sk-XF4Rh3W)
              |j $ {} (:text |*reel) (:type :leaf) (:at 1507808379111) (:by |root) (:id |HyM7tVRn3W)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |merge) (:type :leaf) (:at 1507808397502) (:by |root) (:id |r1rq4R3nZ)
                  |j $ {} (:text |reel-schema) (:type :leaf) (:at 1507808421056) (:by |root) (:id |SkLq403nZ)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1507808424590) (:by |root) (:id |Syr6i4Rhhb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:base) (:type :leaf) (:at 1507808428338) (:by |root) (:id |BJZ-3EC22b)
                          |j $ {} (:text |@*initial-db) (:type :leaf) (:at 1614526191000) (:by |B1y7Rc-Zz) (:id |Bk7E3V0nnW)
                        :type :expr
                        :at 1507808425954
                        :by |root
                        :id |HyfnN03hb
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:db) (:type :leaf) (:at 1507808433485) (:by |root) (:id |Sy7O2VC32bleaf)
                          |j $ {} (:text |@*initial-db) (:type :leaf) (:at 1614526188624) (:by |B1y7Rc-Zz) (:id |rJqhVR32W)
                        :type :expr
                        :at 1507808432498
                        :by |root
                        :id |Sy7O2VC32b
                    :type :expr
                    :at 1507808421610
                    :by |root
                    :id |HkCo4RnnZ
                :type :expr
                :at 1507808379111
                :by |root
                :id |BJm7FEC33-
            :type :expr
            :at 1507808379111
            :by |root
            :id |r1e7FVRhhW
          |*proxied-dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1621501847096) (:by |B1y7Rc-Zz)
              |j $ {} (:text |*proxied-dispatch!) (:type :leaf) (:at 1621501845036) (:by |B1y7Rc-Zz)
              |r $ {} (:text |dispatch!) (:type :leaf) (:at 1621501853222) (:by |B1y7Rc-Zz)
            :type :expr
            :at 1621501845036
            :by |B1y7Rc-Zz
          |main! $ {}
            :data $ {}
              |yD $ {}
                :data $ {}
                  |T $ {} (:text |repeat!) (:type :leaf) (:at 1544810323543) (:by |B1y7Rc-Zz) (:id |rkjaU2Ynfleaf)
                  |b $ {} (:text |600) (:type :leaf) (:at 1544810511757) (:by |B1y7Rc-Zz) (:id |3fpURgvf8)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1614526256531) (:by |B1y7Rc-Zz)
                      |L $ {}
                        :data $ {}
                        :type :expr
                        :at 1614526256803
                        :by |B1y7Rc-Zz
                      |T $ {}
                        :data $ {}
                          |j $ {} (:text |persist-db!) (:type :leaf) (:at 1524381390653) (:by |root) (:id |Hk-QAUhFhM)
                        :type :expr
                        :at 1524381384637
                        :by |root
                        :id |r1bCLht3z
                    :type :expr
                    :at 1614526255955
                    :by |B1y7Rc-Zz
                :type :expr
                :at 1524381378701
                :by |root
                :id |rkjaU2Ynf
              |T $ {} (:text |defn) (:type :leaf) (:at 1589296199613) (:by |B1y7Rc-Zz) (:id |By1KbeIbl0SW)
              |j $ {} (:text |main!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJxFZgUWe0SW)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1500541255553
                :by nil
                :id |Sk-t-eUbgASZ
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874545787) (:by |B1y7Rc-Zz) (:id |47x2yC5fQ1)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1589296572333) (:by |B1y7Rc-Zz) (:id |vDtGabJoWY)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874545787) (:by |B1y7Rc-Zz) (:id |M2H1dLZdkO)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874545787) (:by |B1y7Rc-Zz) (:id |2SiAe7kShD)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874545787) (:by |B1y7Rc-Zz) (:id |u9-nrGtmS_)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874545787) (:by |B1y7Rc-Zz) (:id |yuhA6uYStO)
                    :type :expr
                    :at 1544874545787
                    :by |B1y7Rc-Zz
                    :id |1uZ2rIwEGV
                :type :expr
                :at 1544874545787
                :by |B1y7Rc-Zz
                :id |ixJMdEOdW6
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1553788515703) (:by |B1y7Rc-Zz) (:id |vFIS2bOM3)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |port) (:type :leaf) (:at 1553788516783) (:by |B1y7Rc-Zz) (:id |gl_92KaPb5)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1553788530881) (:by |B1y7Rc-Zz) (:id |UvSpFro-t)
                              |b $ {}
                                :data $ {}
                                  |T $ {} (:text |some?) (:type :leaf) (:at 1553788532238) (:by |B1y7Rc-Zz) (:id |dlK4nA9Ns7)
                                  |j $ {} (:text |js/process.env.port) (:type :leaf) (:at 1553788553815) (:by |B1y7Rc-Zz) (:id |QUo9MvJ-P)
                                :type :expr
                                :at 1553788531514
                                :by |B1y7Rc-Zz
                                :id |X-Pf8g_KAB
                              |f $ {}
                                :data $ {}
                                  |T $ {} (:text |js/parseInt) (:type :leaf) (:at 1553788561268) (:by |B1y7Rc-Zz) (:id |z58Xu2cz7Gleaf)
                                  |j $ {} (:text |js/process.env.port) (:type :leaf) (:at 1553788562566) (:by |B1y7Rc-Zz) (:id |aez-6GgOEr)
                                :type :expr
                                :at 1553788557103
                                :by |B1y7Rc-Zz
                                :id |z58Xu2cz7G
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:port) (:type :leaf) (:at 1553788525847) (:by |B1y7Rc-Zz) (:id |uWjV9eZLxb)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1553788525847) (:by |B1y7Rc-Zz) (:id |KRloLjCbGZ)
                                :type :expr
                                :at 1553788525847
                                :by |B1y7Rc-Zz
                                :id |6BMkugak_y
                            :type :expr
                            :at 1553788517778
                            :by |B1y7Rc-Zz
                            :id |_e17Xb27Kq
                        :type :expr
                        :at 1553788516107
                        :by |B1y7Rc-Zz
                        :id |40v67_35TB
                    :type :expr
                    :at 1553788515949
                    :by |B1y7Rc-Zz
                    :id |eSdA9UYg_Z
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |run-server!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1_YWgLZlRrb)
                      |j $ {} (:text |port) (:type :leaf) (:at 1553788570566) (:by |B1y7Rc-Zz) (:id |dr9TXC6q16)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HyDtWeIZgCBb
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1553788589416) (:by |B1y7Rc-Zz) (:id |x6MLz_p9KI)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |str) (:type :leaf) (:at 1614526246596) (:by |B1y7Rc-Zz) (:id |tmlQJq9tBw)
                          |T $ {} (:text "|\"Server started on port:") (:type :leaf) (:at 1614526243527) (:by |B1y7Rc-Zz) (:id |OMKFBDttMT)
                          |j $ {} (:text |port) (:type :leaf) (:at 1614526245207) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1553788598573
                        :by |B1y7Rc-Zz
                        :id |BbhEbAEPR
                    :type :expr
                    :at 1553788589416
                    :by |B1y7Rc-Zz
                    :id |MVJYmlkk1d
                :type :expr
                :at 1553788514374
                :by |B1y7Rc-Zz
                :id |fZLSX4r6zc
              |w $ {}
                :data $ {}
                  |T $ {} (:text |render-loop!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByE0bxLZl0HW)
                  |j $ {} (:text |*loop-trigger) (:type :leaf) (:at 1615970411880) (:by |B1y7Rc-Zz)
                :type :expr
                :at 1500541255553
                :by nil
                :id |H1XCZgLWlAS-
              |y $ {}
                :data $ {}
                  |j $ {} (:text |js/process.on) (:type :leaf) (:at 1544811384092) (:by |B1y7Rc-Zz) (:id |r1RAZx8bx0Hb)
                  |r $ {} (:text "|\"SIGINT") (:type :leaf) (:at 1544811385490) (:by |B1y7Rc-Zz) (:id |BkkJMlLZeAHb)
                  |v $ {} (:text |on-exit!) (:type :leaf) (:at 1507806173399) (:by |root) (:id |Skelr1np23-)
                :type :expr
                :at 1500541255553
                :by nil
                :id |BJ3C-gIWlABb
            :type :expr
            :at 1500541255553
            :by nil
            :id |ryC_We8ZlASb
          |*loop-trigger $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1615970368016) (:by |B1y7Rc-Zz)
              |j $ {} (:text |*loop-trigger) (:type :leaf) (:at 1615970366646) (:by |B1y7Rc-Zz)
              |r $ {} (:text |0) (:type :leaf) (:at 1615970369442) (:by |B1y7Rc-Zz)
            :type :expr
            :at 1615970366646
            :by |B1y7Rc-Zz
          |on-exit! $ {}
            :data $ {}
              |xD $ {}
                :data $ {}
                  |D $ {} (:text |;) (:type :leaf) (:at 1544811430713) (:by |B1y7Rc-Zz) (:id |Vxnxa2z_pk)
                  |T $ {} (:text |println) (:type :leaf) (:at 1521797676956) (:by |root) (:id |rJVE9BM5zleaf)
                  |j $ {} (:text "|\"exit code is:") (:type :leaf) (:at 1543165572288) (:by |B1y7Rc-Zz) (:id |BJHrE9rG5G)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |pr-str) (:type :leaf) (:at 1521797685691) (:by |root) (:id |Hken4qrMcG)
                      |j $ {} (:text |code) (:type :leaf) (:at 1521797686800) (:by |root) (:id |SkZCNqHGcz)
                    :type :expr
                    :at 1521797684755
                    :by |root
                    :id |Skp45HfqM
                :type :expr
                :at 1521797676085
                :by |root
                :id |rJVE9BM5z
              |yT $ {}
                :data $ {}
                  |j $ {} (:text |js/process.exit) (:type :leaf) (:at 1544811433833) (:by |B1y7Rc-Zz) (:id |r11eSkha3nW)
                :type :expr
                :at 1507806173399
                :by |root
                :id |ry6rkhTh3b
              |T $ {} (:text |defn) (:type :leaf) (:at 1507806175705) (:by |root) (:id |rJZSy2T2n-)
              |j $ {} (:text |on-exit!) (:type :leaf) (:at 1507806173399) (:by |root) (:id |B1fHy2pnnb)
              |v $ {}
                :data $ {}
                  |T $ {} (:text |code) (:type :leaf) (:at 1507806173399) (:by |root) (:id |rk8rJh63nW)
                  |j $ {} (:text |_) (:type :leaf) (:at 1614611596421) (:by |B1y7Rc-Zz)
                :type :expr
                :at 1507806173399
                :by |root
                :id |H1rrkn63h-
              |x $ {}
                :data $ {}
                  |T $ {} (:text |persist-db!) (:type :leaf) (:at 1521797534647) (:by |root) (:id |HyMlDiFBG9G)
                :type :expr
                :at 1521797541557
                :by |root
                :id |rJRiKSf9M
            :type :expr
            :at 1507806173399
            :by |root
            :id |r1gryn6hhZ
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1507805746075) (:by |root) (:id |ByZNX963nb)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1507805724033) (:by |root) (:id |SyzNX963nW)
              |n $ {}
                :data $ {}
                  |j $ {} (:text |op) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJd_7l8We0S-)
                  |r $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SktOQxLZxRSZ)
                  |v $ {} (:text |sid) (:type :leaf) (:at 1507806585099) (:by |root) (:id |Bk5OmlUWgRrW)
                :type :expr
                :at 1500541255553
                :by nil
                :id |ryIIpp23-
              |t $ {}
                :data $ {}
                  |5 $ {} (:text |let) (:type :leaf) (:at 1513612449423) (:by |root) (:id |BkYoEvBzM)
                  |9 $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |op-id) (:type :leaf) (:at 1513612454094) (:by |root) (:id |SJQts4vSfM)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |id!) (:type :leaf) (:at 1544810292433) (:by |B1y7Rc-Zz) (:id |HJbRj4DBzf)
                            :type :expr
                            :at 1513612454756
                            :by |root
                            :id |ry1hNPHzz
                        :type :expr
                        :at 1513612450706
                        :by |root
                        :id |B1ijNDBfz
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |op-time) (:type :leaf) (:at 1513612460384) (:by |root) (:id |ByWXn4DSffleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |unix-time!) (:type :leaf) (:at 1544810297331) (:by |B1y7Rc-Zz) (:id |ry8hEDSMz)
                            :type :expr
                            :at 1513612461810
                            :by |root
                            :id |Bkl83EPBzM
                        :type :expr
                        :at 1513612459185
                        :by |root
                        :id |ByWXn4DSff
                    :type :expr
                    :at 1513612449699
                    :by |root
                    :id |HJ5jVDBMG
                  |D $ {}
                    :data $ {}
                      |D $ {} (:text |if) (:type :leaf) (:at 1527441310262) (:by |root) (:id |rJl8ivw_yQ)
                      |L $ {} (:text |config/dev?) (:type :leaf) (:at 1544855106984) (:by |B1y7Rc-Zz) (:id |-p0yuFJFg)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1519314516627) (:by |root) (:id |S1Gg4X9T2hZ)
                          |r $ {} (:text "|\"Dispatch!") (:type :leaf) (:at 1507830373170) (:by |root) (:id |rJNgVX9p3hZ)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |str) (:type :leaf) (:at 1507805724033) (:by |root) (:id |SJLeNQ56nh-)
                              |j $ {} (:text |op) (:type :leaf) (:at 1507805724033) (:by |root) (:id |SkwgE7c622W)
                            :type :expr
                            :at 1507805724033
                            :by |root
                            :id |B1rg4Q5p23b
                          |x $ {} (:text |op-data) (:type :leaf) (:at 1507805724033) (:by |root) (:id |r19gNm5T3nW)
                          |y $ {} (:text |sid) (:type :leaf) (:at 1507806587446) (:by |root) (:id |HkigVm9ph3Z)
                        :type :expr
                        :at 1507805724033
                        :by |root
                        :id |rkOj4wBMG
                    :type :expr
                    :at 1527441309672
                    :by |root
                    :id |BJLiPPOym
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |=) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |op) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                          |r $ {} (:text |:effect/persist) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1621501406909
                        :by |B1y7Rc-Zz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |persist-db!) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1621501406909
                        :by |B1y7Rc-Zz
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |reset!) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |*reel) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                          |r $ {}
                            :data $ {}
                              |yT $ {} (:text |op-id) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                              |yj $ {} (:text |op-time) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                              |yr $ {} (:text |config/dev?) (:type :leaf) (:at 1624108762047) (:by |B1y7Rc-Zz)
                              |T $ {} (:text |reel-reducer) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                              |j $ {} (:text |@*reel) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                              |r $ {} (:text |updater) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                              |v $ {} (:text |op) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                              |x $ {} (:text |op-data) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                              |y $ {} (:text |sid) (:type :leaf) (:at 1621501406909) (:by |B1y7Rc-Zz)
                            :type :expr
                            :at 1621501406909
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1621501406909
                        :by |B1y7Rc-Zz
                    :type :expr
                    :at 1621501406909
                    :by |B1y7Rc-Zz
                :type :expr
                :at 1513612441808
                :by |root
                :id |H1eziVwSMz
            :type :expr
            :at 1507805724033
            :by |root
            :id |ByeNmqTh2W
          |run-server! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HytOfeUZlCBb)
              |j $ {} (:text |run-server!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hk9_GeUbe0r-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |port) (:type :leaf) (:at 1553788573690) (:by |B1y7Rc-Zz) (:id |pxxMkSmrTC)
                :type :expr
                :at 1500541255553
                :by nil
                :id |rJj_GeI-lASZ
              |x $ {}
                :data $ {}
                  |T $ {} (:text |wss-serve!) (:type :leaf) (:at 1626341206891) (:by |B1y7Rc-Zz) (:id |SD-XH5r7aleaf)
                  |f $ {} (:text |port) (:type :leaf) (:at 1553788575365) (:by |B1y7Rc-Zz) (:id |k_aWrHrdzd)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1544639508490) (:by |B1y7Rc-Zz) (:id |xwrUDz41g5)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:on-open) (:type :leaf) (:at 1626339712003) (:by |B1y7Rc-Zz) (:id |uB2Zim6LT)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1544639525993) (:by |B1y7Rc-Zz) (:id |AF3obd1ask)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |sid) (:type :leaf) (:at 1544639561518) (:by |B1y7Rc-Zz) (:id |a92GFSmGQT)
                                  |j $ {} (:text |socket) (:type :leaf) (:at 1544639563012) (:by |B1y7Rc-Zz) (:id |IFDr1z8c7n)
                                :type :expr
                                :at 1544639527112
                                :by |B1y7Rc-Zz
                                :id |7QX5CI38ye
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |@*proxied-dispatch!) (:type :leaf) (:at 1621501950760) (:by |B1y7Rc-Zz) (:id |yebk5kXjqI)
                                  |j $ {} (:text |:session/connect) (:type :leaf) (:at 1544639535765) (:by |B1y7Rc-Zz) (:id |FjFoV44x5Z)
                                  |r $ {} (:text |nil) (:type :leaf) (:at 1544639535765) (:by |B1y7Rc-Zz) (:id |xXumjRwfBP)
                                  |v $ {} (:text |sid) (:type :leaf) (:at 1544639535765) (:by |B1y7Rc-Zz) (:id |ARp_QusV21)
                                :type :expr
                                :at 1544639535765
                                :by |B1y7Rc-Zz
                                :id |JN0oeaGJVg
                              |x $ {}
                                :data $ {}
                                  |j $ {} (:text |println) (:type :leaf) (:at 1621501379242) (:by |B1y7Rc-Zz) (:id |T_Fl0Z8w32q)
                                  |r $ {} (:text "|\"New client.") (:type :leaf) (:at 1544639535765) (:by |B1y7Rc-Zz) (:id |_CFTepBDxZh)
                                :type :expr
                                :at 1544639535765
                                :by |B1y7Rc-Zz
                                :id |QP7ONNAu2W3
                            :type :expr
                            :at 1544639525663
                            :by |B1y7Rc-Zz
                            :id |1imoGEnui
                        :type :expr
                        :at 1544639508797
                        :by |B1y7Rc-Zz
                        :id |p1O5oPj3xR
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:on-data) (:type :leaf) (:at 1544810938230) (:by |B1y7Rc-Zz) (:id |iWUyaB4CGleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1621501965498) (:by |B1y7Rc-Zz)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |sid) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |action) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1621501961697
                                :by |B1y7Rc-Zz
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |case-default) (:type :leaf) (:at 1626339955158) (:by |B1y7Rc-Zz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:kind) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text |action) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1621501961697
                                    :by |B1y7Rc-Zz
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |println) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text "|\"unknown action:") (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                      |r $ {} (:text |action) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1621501961697
                                    :by |B1y7Rc-Zz
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:op) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |@*proxied-dispatch!) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:op) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                              |j $ {} (:text |action) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                            :type :expr
                                            :at 1621501961697
                                            :by |B1y7Rc-Zz
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:data) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                              |j $ {} (:text |action) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                            :type :expr
                                            :at 1621501961697
                                            :by |B1y7Rc-Zz
                                          |v $ {} (:text |sid) (:type :leaf) (:at 1621501961697) (:by |B1y7Rc-Zz)
                                        :type :expr
                                        :at 1621501961697
                                        :by |B1y7Rc-Zz
                                    :type :expr
                                    :at 1621501961697
                                    :by |B1y7Rc-Zz
                                :type :expr
                                :at 1621501961697
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1621501961697
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1544639569547
                        :by |B1y7Rc-Zz
                        :id |iWUyaB4CG
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |:on-close) (:type :leaf) (:at 1544810939593) (:by |B1y7Rc-Zz) (:id |kNLN7Uum6Yleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1544639580267) (:by |B1y7Rc-Zz) (:id |GYWTSPNRa)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |sid) (:type :leaf) (:at 1544639582479) (:by |B1y7Rc-Zz) (:id |pQ0g1NJZ_Z)
                                  |j $ {} (:text |event) (:type :leaf) (:at 1544639583372) (:by |B1y7Rc-Zz) (:id |VZRnXwrpL)
                                :type :expr
                                :at 1544639580554
                                :by |B1y7Rc-Zz
                                :id |iKfibw3_U
                              |r $ {}
                                :data $ {}
                                  |j $ {} (:text |println) (:type :leaf) (:at 1621501367312) (:by |B1y7Rc-Zz) (:id |ifES84g923)
                                  |r $ {} (:text "|\"Client closed!") (:type :leaf) (:at 1544639607005) (:by |B1y7Rc-Zz) (:id |TmU5V9iQec)
                                :type :expr
                                :at 1544639607005
                                :by |B1y7Rc-Zz
                                :id |Xsvj0hSsFk
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |@*proxied-dispatch!) (:type :leaf) (:at 1621501954313) (:by |B1y7Rc-Zz) (:id |HeGJDMWzai)
                                  |j $ {} (:text |:session/disconnect) (:type :leaf) (:at 1544639607005) (:by |B1y7Rc-Zz) (:id |tRs-S2OfEz-)
                                  |r $ {} (:text |nil) (:type :leaf) (:at 1544639607005) (:by |B1y7Rc-Zz) (:id |F0AWRpSWtnO)
                                  |v $ {} (:text |sid) (:type :leaf) (:at 1544639607005) (:by |B1y7Rc-Zz) (:id |_kCwcGpZXve)
                                :type :expr
                                :at 1544639607005
                                :by |B1y7Rc-Zz
                                :id |lPQdf_jkAd
                            :type :expr
                            :at 1544639580007
                            :by |B1y7Rc-Zz
                            :id |-Jvbv3EjiF
                        :type :expr
                        :at 1544639576999
                        :by |B1y7Rc-Zz
                        :id |kNLN7Uum6Y
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |:on-error) (:type :leaf) (:at 1544810941450) (:by |B1y7Rc-Zz) (:id |BV1mgnNYEHleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1544639600397) (:by |B1y7Rc-Zz) (:id |8HR2bLPlPq)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |error) (:type :leaf) (:at 1544639600397) (:by |B1y7Rc-Zz) (:id |xTnL0Avm6A)
                                :type :expr
                                :at 1544639600397
                                :by |B1y7Rc-Zz
                                :id |qWuWmL1TU8
                              |r $ {}
                                :data $ {}
                                  |j $ {} (:text |js/console.error) (:type :leaf) (:at 1621501369973) (:by |B1y7Rc-Zz) (:id |octpokGYeu)
                                  |r $ {} (:text |error) (:type :leaf) (:at 1544639600397) (:by |B1y7Rc-Zz) (:id |nKfWp-e3lX)
                                :type :expr
                                :at 1544639600397
                                :by |B1y7Rc-Zz
                                :id |qyQ9UYsiT4
                            :type :expr
                            :at 1544639600397
                            :by |B1y7Rc-Zz
                            :id |RrMY7Eh0_f
                        :type :expr
                        :at 1544639588153
                        :by |B1y7Rc-Zz
                        :id |BV1mgnNYEH
                    :type :expr
                    :at 1544639507467
                    :by |B1y7Rc-Zz
                    :id |Ds61YycnTT
                :type :expr
                :at 1544639479135
                :by |B1y7Rc-Zz
                :id |SD-XH5r7a
            :type :expr
            :at 1500541255553
            :by nil
            :id |B1OOMlL-l0r-
          |render-loop! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HksGfeIWx0Bb)
              |j $ {} (:text |render-loop!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJhGfeIWeAHZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |*loop) (:type :leaf) (:at 1615970402397) (:by |B1y7Rc-Zz)
                :type :expr
                :at 1500541255553
                :by nil
                :id |H1pzfgUZxRr-
              |v $ {}
                :data $ {}
                  |T $ {} (:text |when) (:type :leaf) (:at 1544811365548) (:by |B1y7Rc-Zz) (:id |Byy7MeU-e0Bb)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |not) (:type :leaf) (:at 1507829942884) (:by |root) (:id |Skb0n_Xpnb)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |identical?) (:type :leaf) (:at 1507829941197) (:by |root) (:id |rJb7zeUbx0Bb)
                          |j $ {} (:text |@*reader-reel) (:type :leaf) (:at 1507830005566) (:by |root) (:id |HkzmGlIbe0SZ)
                          |r $ {} (:text |@*reel) (:type :leaf) (:at 1507808466061) (:by |root) (:id |BJfD04An2W)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |rylQGeLbgArW
                    :type :expr
                    :at 1507829942161
                    :by |root
                    :id |BJlR2dXahb
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |reset!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Byw7zlIWxRSZ)
                      |j $ {} (:text |*reader-reel) (:type :leaf) (:at 1507829950396) (:by |root) (:id |S1OmzeLZeRS-)
                      |r $ {} (:text |@*reel) (:type :leaf) (:at 1507808466061) (:by |root) (:id |BJfD04An2W)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HJ8QGlIWxRrZ
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |sync-clients!) (:type :leaf) (:at 1507806914566) (:by |root) (:id |H11NMgLZx0SZ)
                      |j $ {} (:text |@*reader-reel) (:type :leaf) (:at 1507829954052) (:by |root) (:id |H1e4fgLZeRH-)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HkCQfg8-g0HZ
                :type :expr
                :at 1500541255553
                :by nil
                :id |BJCGfg8ZgRrb
              |x $ {}
                :data $ {}
                  |D $ {} (:text |reset!) (:type :leaf) (:at 1615970346105) (:by |B1y7Rc-Zz)
                  |L $ {} (:text |*loop) (:type :leaf) (:at 1615970399432) (:by |B1y7Rc-Zz)
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |delay!) (:type :leaf) (:at 1544811335243) (:by |B1y7Rc-Zz) (:id |SyfVzeIZlAH-)
                      |b $ {} (:text |0.2) (:type :leaf) (:at 1544811336574) (:by |B1y7Rc-Zz) (:id |EPVnD1lMY)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |fn) (:type :leaf) (:at 1615970429869) (:by |B1y7Rc-Zz)
                          |L $ {}
                            :data $ {}
                            :type :expr
                            :at 1615970430271
                            :by |B1y7Rc-Zz
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |render-loop!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Sy7EMeIbeCSb)
                              |j $ {} (:text |*loop) (:type :leaf) (:at 1615970433428) (:by |B1y7Rc-Zz)
                            :type :expr
                            :at 1615970431184
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1615970429247
                        :by |B1y7Rc-Zz
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |rJ-4Gl8bgCBW
                :type :expr
                :at 1615970337285
                :by |B1y7Rc-Zz
            :type :expr
            :at 1500541255553
            :by nil
            :id |ry9MzxLZxAHZ
          |*client-caches $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1614610850508) (:by |B1y7Rc-Zz) (:id |HyrB7gIWeCrb)
              |j $ {} (:text |*client-caches) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1UH7xLWl0BZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rk5SXeI-x0BW)
                :type :expr
                :at 1500541255553
                :by nil
                :id |rkFH7l8bl0Bb
            :type :expr
            :at 1500541255553
            :by nil
            :id |S1VrmlLWxAr-
          |reload! $ {}
            :data $ {}
              |vT $ {}
                :data $ {}
                  |T $ {} (:text |clear-twig-caches!) (:type :leaf) (:at 1593255076725) (:by |B1y7Rc-Zz) (:id |BTUqyb3x4D)
                :type :expr
                :at 1593255076396
                :by |B1y7Rc-Zz
                :id |mJ_7cI3g2
              |vj $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1621502572878) (:by |B1y7Rc-Zz)
                  |j $ {} (:text |*proxied-dispatch!) (:type :leaf) (:at 1621502118637) (:by |B1y7Rc-Zz)
                  |r $ {} (:text |dispatch!) (:type :leaf) (:at 1621502122061) (:by |B1y7Rc-Zz)
                :type :expr
                :at 1621502118637
                :by |B1y7Rc-Zz
              |wT $ {}
                :data $ {}
                  |T $ {} (:text |js/clearTimeout) (:type :leaf) (:at 1615983994433) (:by |B1y7Rc-Zz)
                  |j $ {} (:text |@*loop-trigger) (:type :leaf) (:at 1615970384610) (:by |B1y7Rc-Zz)
                :type :expr
                :at 1615970377802
                :by |B1y7Rc-Zz
              |wj $ {}
                :data $ {}
                  |T $ {} (:text |render-loop!) (:type :leaf) (:at 1615970387985) (:by |B1y7Rc-Zz)
                  |j $ {} (:text |*loop-trigger) (:type :leaf) (:at 1615970406021) (:by |B1y7Rc-Zz)
                :type :expr
                :at 1615970385485
                :by |B1y7Rc-Zz
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkHOZxL-eRHb)
              |j $ {} (:text |reload!) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1LO-x8bxCrZ)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1500541255553
                :by nil
                :id |ByP_-xUblRHZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJFu-e8-lABZ)
                  |j $ {} (:text "|\"Code updated.") (:type :leaf) (:at 1621502660961) (:by |B1y7Rc-Zz) (:id |SJ9u-lUbeABZ)
                :type :expr
                :at 1500541255553
                :by nil
                :id |Sk_O-xUZgAH-
              |w $ {}
                :data $ {}
                  |T $ {} (:text |reset!) (:type :leaf) (:at 1507808618991) (:by |root) (:id |B1x-uS0nnWleaf)
                  |j $ {} (:text |*reel) (:type :leaf) (:at 1507808620966) (:by |root) (:id |rJfX_rR2hb)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |refresh-reel) (:type :leaf) (:at 1507808630362) (:by |root) (:id |BkXHdSAhnZ)
                      |X $ {} (:text |@*reel) (:type :leaf) (:at 1507808655126) (:by |root) (:id |HygJ5HR2nb)
                      |b $ {} (:text |@*initial-db) (:type :leaf) (:at 1614526195873) (:by |B1y7Rc-Zz) (:id |HJSmYHR3hW)
                      |j $ {} (:text |updater) (:type :leaf) (:at 1507808635015) (:by |root) (:id |HyzKBRnhb)
                    :type :expr
                    :at 1507808621613
                    :by |root
                    :id |B1IOrRnn-
                :type :expr
                :at 1507808617377
                :by |root
                :id |B1x-uS0nnW
              |x $ {}
                :data $ {}
                  |T $ {} (:text |sync-clients!) (:type :leaf) (:at 1507806907419) (:by |root) (:id |H13dbl8ZgAB-)
                  |j $ {} (:text |@*reader-reel) (:type :leaf) (:at 1507829993436) (:by |root) (:id |S1aO-x8bxABZ)
                :type :expr
                :at 1500541255553
                :by nil
                :id |SksuZxUbxABW
            :type :expr
            :at 1500541255553
            :by nil
            :id |SyV_WxUZlCSZ
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |rJ5I-xLblCH-
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyjXZxIWlCBb)
            |j $ {} (:text |app.server) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rynmbgL-e0r-)
            |r $ {}
              :data $ {}
                |yyR $ {}
                  :data $ {}
                    |j $ {} (:text |cumulo-util.core) (:type :leaf) (:at 1544810273098) (:by |B1y7Rc-Zz) (:id |v0GgDFKHV)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544810273781) (:by |B1y7Rc-Zz) (:id |xrvxe7s5Tf)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |id!) (:type :leaf) (:at 1544810278362) (:by |B1y7Rc-Zz) (:id |LvIbvDNN65)
                        |r $ {} (:text |repeat!) (:type :leaf) (:at 1544810280521) (:by |B1y7Rc-Zz) (:id |MSwJbew7d)
                        |v $ {} (:text |unix-time!) (:type :leaf) (:at 1544810285002) (:by |B1y7Rc-Zz) (:id |puhqjzrc-)
                        |x $ {} (:text |delay!) (:type :leaf) (:at 1544811398191) (:by |B1y7Rc-Zz) (:id |Zi0Yff8bVM)
                      :type :expr
                      :at 1544810274008
                      :by |B1y7Rc-Zz
                      :id |xjtJTnt1ly
                  :type :expr
                  :at 1544810269040
                  :by |B1y7Rc-Zz
                  :id |8NewtMpjpM
                |yyv $ {}
                  :data $ {}
                    |j $ {} (:text |app.twig.container) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |F9aCPT-9GP)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |FFxCAkuQ1st)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |twig-container) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |pLYuxW8qPXU)
                      :type :expr
                      :at 1544725704637
                      :by |B1y7Rc-Zz
                      :id |dW0TziccHa5
                  :type :expr
                  :at 1544725704637
                  :by |B1y7Rc-Zz
                  :id |0NS9oci0EZ
                |yyx $ {}
                  :data $ {}
                    |j $ {} (:text |recollect.diff) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |7IhBCfrurz1)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |8z_kPm6aiTN)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |diff-twig) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |Y0VJELws06H)
                      :type :expr
                      :at 1544725704637
                      :by |B1y7Rc-Zz
                      :id |sl8neJLSDXl
                  :type :expr
                  :at 1544725704637
                  :by |B1y7Rc-Zz
                  :id |DhV1kziF4nO
                |yyyT $ {}
                  :data $ {}
                    |j $ {} (:text |ws-edn.server) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |GD2X95riZtA)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |ZzDWiUh3vZk)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |wss-serve!) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |rbZfKh3-bfl)
                        |r $ {} (:text |wss-send!) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |S59AQdtZmFe)
                        |v $ {} (:text |wss-each!) (:type :leaf) (:at 1544725704637) (:by |B1y7Rc-Zz) (:id |aXudfs6c7Xm)
                      :type :expr
                      :at 1544725704637
                      :by |B1y7Rc-Zz
                      :id |QpJls4Y8LTI
                  :type :expr
                  :at 1544725704637
                  :by |B1y7Rc-Zz
                  :id |1KsllDEr_mn
                |yyyr $ {}
                  :data $ {}
                    |j $ {} (:text |recollect.twig) (:type :leaf) (:at 1593255057574) (:by |B1y7Rc-Zz) (:id |O0gx3yGjo4)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1593255058305) (:by |B1y7Rc-Zz) (:id |sohOUki0AR)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |new-twig-loop!) (:type :leaf) (:at 1593255059229) (:by |B1y7Rc-Zz) (:id |VBtDU673Qi)
                        |r $ {} (:text |clear-twig-caches!) (:type :leaf) (:at 1593255068726) (:by |B1y7Rc-Zz) (:id |YId1MbC3c)
                      :type :expr
                      :at 1593255058544
                      :by |B1y7Rc-Zz
                      :id |0Q0YBi8Cyc
                  :type :expr
                  :at 1593255050706
                  :by |B1y7Rc-Zz
                  :id |OttYKFkjb7
                |yL $ {}
                  :data $ {}
                    |j $ {} (:text |cumulo-reel.core) (:type :leaf) (:at 1545067236300) (:by |B1y7Rc-Zz) (:id |rkmZ0XAh2-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1507808205649) (:by |root) (:id |ryGEC7AhnW)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |reel-reducer) (:type :leaf) (:at 1524591466804) (:by |root) (:id |Sk-v0QChn-)
                        |r $ {} (:text |refresh-reel) (:type :leaf) (:at 1507808213599) (:by |root) (:id |S1I9CQCn3b)
                        |v $ {} (:text |reel-schema) (:type :leaf) (:at 1507808445442) (:by |root) (:id |Sk4pEAnhZ)
                      :type :expr
                      :at 1507808205916
                      :by |root
                      :id |BJWU0mRhhZ
                  :type :expr
                  :at 1507808200988
                  :by |root
                  :id |HylWRQCh2Z
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text "|\"fs") (:type :leaf) (:at 1529517119897) (:by |root) (:id |S1WhlDT33Z)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1507804918168) (:by |root) (:id |Bkbpgvp3nW)
                    |v $ {} (:text |fs) (:type :leaf) (:at 1507804918540) (:by |root) (:id |H1V0xPahh-)
                  :type :expr
                  :at 1507804915408
                  :by |root
                  :id |BkxoeDT23Z
                |yb $ {}
                  :data $ {}
                    |j $ {} (:text "|\"path") (:type :leaf) (:at 1544855375175) (:by |B1y7Rc-Zz) (:id |-m4ZmPN9Dw)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1544855375739) (:by |B1y7Rc-Zz) (:id |TOQgB9-N2P)
                    |v $ {} (:text |path) (:type :leaf) (:at 1544855376714) (:by |B1y7Rc-Zz) (:id |I9UuKC2fbr)
                  :type :expr
                  :at 1544855373325
                  :by |B1y7Rc-Zz
                  :id |jpKmPQM50g
                |yx $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788878839) (:by |root) (:id |H1zSIH26kX)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788879495) (:by |root) (:id |BkGvIB3TyX)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788880219) (:by |root) (:id |Hku8Sn6Jm)
                  :type :expr
                  :at 1527788877059
                  :by |root
                  :id |BJS8H2pkm
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text |cumulo-util.file) (:type :leaf) (:at 1544377388510) (:by |B1y7Rc-Zz) (:id |SBANNB1hQ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544376555647) (:by |B1y7Rc-Zz) (:id |Jk02sTClF)
                    |v $ {}
                      :data $ {}
                        |T $ {} (:text |write-mildly!) (:type :leaf) (:at 1544377347799) (:by |B1y7Rc-Zz) (:id |Sg84KjB4Fc)
                        |j $ {} (:text |get-backup-path!) (:type :leaf) (:at 1544726463994) (:by |B1y7Rc-Zz) (:id |TkhXx4psyp)
                        |r $ {} (:text |merge-local-edn!) (:type :leaf) (:at 1544726475855) (:by |B1y7Rc-Zz) (:id |P959qawEo)
                      :type :expr
                      :at 1544376556961
                      :by |B1y7Rc-Zz
                      :id |YcnFvECAHN
                  :type :expr
                  :at 1544376522780
                  :by |B1y7Rc-Zz
                  :id |ChaQ4dQ6Hl
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1AmWe8WgRBW)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJWEZl8Wl0rW)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJGEZlU-gCS-)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r17V-l8bx0Hb)
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |ByJ4ZgLbeCHb
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater) (:type :leaf) (:at 1517931127726) (:by |root) (:id |Sk0V-e8-gCr-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HykSbxL-gArb)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |updater) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1zHWeU-l0Sb)
                      :type :expr
                      :at 1500541255553
                      :by nil
                      :id |BkgBZlLZlRHW
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |BJnEWxL-g0HW
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |cljs.reader) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Sk3BWeL-xCrW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541255553) (:by |root) (:id |By6H-l8ZgCB-)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |read-string) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkxIWe8WeRrW)
                      :type :expr
                      :at 1500541255553
                      :by nil
                      :id |H10rbxLZxAHW
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |r15SWeIZgCB-
              :type :expr
              :at 1500541255553
              :by nil
              :id |SyTmWlU-xRBZ
          :type :expr
          :at 1500541255553
          :by nil
          :id |SJcm-gIZlCSb
      |app.twig.container $ {}
        :defs $ {}
          |twig-container $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1614219490170) (:by |B1y7Rc-Zz) (:id |BJ5bxLZlRBZ)
              |j $ {} (:text |twig-container) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hkibe8Wl0S-)
              |n $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hkzzg8WlRBZ)
                  |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByXzxL-lCH-)
                  |r $ {} (:text |records) (:type :leaf) (:at 1507828952210) (:by |root) (:id |rklw6NmanW)
                :type :expr
                :at 1500541255553
                :by nil
                :id |Sk-PI_qp1z
              |r $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByHzl8bgCSZ)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |logged-in?) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1_MlIbg0SW)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |some?) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ry5fe8ZlRS-)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:user-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJnGeLZlAHb)
                                  |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJTMlI-eAB-)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |BkiGlU-e0B-
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |B1FGxLWeRHW
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |HywGl8-gCHW
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkkQeLZlCHW)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJWmlLWeRHZ)
                              |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJzXlLWxAHZ)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |SkemlIWxRBb
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |rJ0GgLZlCS-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |base-data) (:type :leaf) (:at 1507830630278) (:by |root) (:id |ryowoQp2Wleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1507830631896) (:by |root) (:id |By1djQTnb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:logged-in?) (:type :leaf) (:at 1507830641027) (:by |root) (:id |Sy-guiXp2b)
                                  |j $ {} (:text |logged-in?) (:type :leaf) (:at 1507830639219) (:by |root) (:id |ByBusQ6hW)
                                :type :expr
                                :at 1507830632113
                                :by |root
                                :id |ryGxdimT2-
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |:session) (:type :leaf) (:at 1507830677551) (:by |root) (:id |ByecqsQ6nWleaf)
                                  |j $ {} (:text |session) (:type :leaf) (:at 1507830679311) (:by |root) (:id |BJlA5oXpn-)
                                :type :expr
                                :at 1507830674443
                                :by |root
                                :id |ByecqsQ6nW
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:reel-length) (:type :leaf) (:at 1507830655148) (:by |root) (:id |SyxMtsm62Zleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |count) (:type :leaf) (:at 1507830657551) (:by |root) (:id |S1dKjma2Z)
                                      |j $ {} (:text |records) (:type :leaf) (:at 1507830658789) (:by |root) (:id |HkgcFsXT3b)
                                    :type :expr
                                    :at 1507830655987
                                    :by |root
                                    :id |B1xuKj7p3-
                                :type :expr
                                :at 1507830649968
                                :by |root
                                :id |SyxMtsm62Z
                            :type :expr
                            :at 1507830631302
                            :by |root
                            :id |r1lyujmp3b
                        :type :expr
                        :at 1507830626848
                        :by |root
                        :id |ryowoQp2W
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HyUflIWgRrZ
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |merge) (:type :leaf) (:at 1507830661999) (:by |root) (:id |H1W6KoQ6hZ)
                      |L $ {} (:text |base-data) (:type :leaf) (:at 1507830664014) (:by |root) (:id |rJVCFjmp2b)
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJVmgLZlAr-)
                          |j $ {} (:text |logged-in?) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1S7gUZlArb)
                          |r $ {}
                            :data $ {}
                              |yT $ {}
                                :data $ {}
                                  |T $ {} (:text |:color) (:type :leaf) (:at 1628369748634) (:by |B1y7Rc-Zz) (:id |rycrDmO2fleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |color/randomColor) (:type :leaf) (:at 1524279116617) (:by |root) (:id |ryJUwQd2f)
                                    :type :expr
                                    :at 1524279111422
                                    :by |root
                                    :id |Hyx1LP7d3z
                                :type :expr
                                :at 1524279105545
                                :by |root
                                :id |rycrDmO2f
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJPQl8ZgCHb)
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hy1VxUbeCS-)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |memof-call) (:type :leaf) (:at 1614221450763) (:by |B1y7Rc-Zz)
                                      |T $ {} (:text |twig-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyZVxIZeCS-)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |get-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkXVeL-l0Sb)
                                          |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJ4Nx8WeCrb)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByIEeLbxCHb)
                                              |j $ {} (:text |:users) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1v4xIWxArZ)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:user-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJYNgUbgCBb)
                                                  |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryqNeLZeCHb)
                                                :type :expr
                                                :at 1500541255553
                                                :by nil
                                                :id |HJ_VxL-xRr-
                                            :type :expr
                                            :at 1500541255553
                                            :by nil
                                            :id |HkrVgLZg0B-
                                        :type :expr
                                        :at 1500541255553
                                        :by nil
                                        :id |HyG4lIZlRHW
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |HJlNxUbx0r-
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |B107eU-lCHZ
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |:router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJ2EeUWe0SZ)
                                  |j $ {}
                                    :data $ {}
                                      |D $ {} (:text |assoc) (:type :leaf) (:at 1524070634499) (:by |root) (:id |rJbWgKgBhz)
                                      |T $ {} (:text |router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJaEl8ZxCS-)
                                      |j $ {} (:text |:data) (:type :leaf) (:at 1524070635855) (:by |root) (:id |rygQeYlH3G)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |case) (:type :leaf) (:at 1524070641567) (:by |root) (:id |BJ74eFlB2z)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:name) (:type :leaf) (:at 1524070642493) (:by |root) (:id |S1g9etlS2M)
                                              |j $ {} (:text |router) (:type :leaf) (:at 1524070643351) (:by |root) (:id |HJilKgSnf)
                                            :type :expr
                                            :at 1524070641804
                                            :by |root
                                            :id |HybcgKxB2G
                                          |n $ {}
                                            :data $ {}
                                              |T $ {} (:text |:home) (:type :leaf) (:at 1525108995413) (:by |root) (:id |BJxq-bAE6zleaf)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:pages) (:type :leaf) (:at 1525109002003) (:by |root) (:id |Hyh-ZCETz)
                                                  |j $ {} (:text |db) (:type :leaf) (:at 1525109002404) (:by |root) (:id |BkWzG-CVpM)
                                                :type :expr
                                                :at 1525108999855
                                                :by |root
                                                :id |BkgzZ0NaG
                                            :type :expr
                                            :at 1525108994160
                                            :by |root
                                            :id |BJxq-bAE6z
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:profile) (:type :leaf) (:at 1524070646898) (:by |root) (:id |Skb6etxBhG)
                                              |j $ {}
                                                :data $ {}
                                                  |D $ {} (:text |memof-call) (:type :leaf) (:at 1614221408482) (:by |B1y7Rc-Zz)
                                                  |T $ {} (:text |twig-members) (:type :leaf) (:at 1524070662619) (:by |root) (:id |B1zJ-teBnM)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:sessions) (:type :leaf) (:at 1524070670477) (:by |root) (:id |Bk-MYxShG)
                                                      |j $ {} (:text |db) (:type :leaf) (:at 1524070672563) (:by |root) (:id |SyPMtxH2G)
                                                    :type :expr
                                                    :at 1524070665615
                                                    :by |root
                                                    :id |B1MzFxBhz
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:users) (:type :leaf) (:at 1524070674094) (:by |root) (:id |HyWFMYxB3Gleaf)
                                                      |j $ {} (:text |db) (:type :leaf) (:at 1524070675166) (:by |root) (:id |HyVcztlS2f)
                                                    :type :expr
                                                    :at 1524070673171
                                                    :by |root
                                                    :id |HyWFMYxB3G
                                                :type :expr
                                                :at 1524070654495
                                                :by |root
                                                :id |ryLWFernz
                                            :type :expr
                                            :at 1524070643948
                                            :by |root
                                            :id |Bke3gKgB3z
                                          |v $ {}
                                            :data $ {}
                                              |D $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:name) (:type :leaf) (:at 1614526050701) (:by |B1y7Rc-Zz)
                                                  |j $ {} (:text |router) (:type :leaf) (:at 1614526050701) (:by |B1y7Rc-Zz)
                                                :type :expr
                                                :at 1614526050701
                                                :by |B1y7Rc-Zz
                                              |T $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1524070649106) (:by |root) (:id |ry-WtlH2Mleaf)
                                                :type :expr
                                                :at 1524070648640
                                                :by |root
                                                :id |ry-WtlH2M
                                            :type :expr
                                            :at 1614526045685
                                            :by |B1y7Rc-Zz
                                        :type :expr
                                        :at 1524070636122
                                        :by |root
                                        :id |r1VNlFlHnz
                                    :type :expr
                                    :at 1524070628251
                                    :by |root
                                    :id |ryh1FgBhM
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |SJsEe8ZgCBZ
                              |y $ {}
                                :data $ {}
                                  |T $ {} (:text |:count) (:type :leaf) (:at 1523120223864) (:by |root) (:id |H1DPud8iGleaf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |count) (:type :leaf) (:at 1523120230136) (:by |root) (:id |HkaDOd8iM)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:sessions) (:type :leaf) (:at 1523120232122) (:by |root) (:id |rJVAwd_8if)
                                          |j $ {} (:text |db) (:type :leaf) (:at 1523120232500) (:by |root) (:id |BJreO_d8of)
                                        :type :expr
                                        :at 1523120230346
                                        :by |root
                                        :id |SJrAwd_8oM
                                    :type :expr
                                    :at 1523120229051
                                    :by |root
                                    :id |rygpP_OUif
                                :type :expr
                                :at 1523120222572
                                :by |root
                                :id |H1DPud8iG
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |HJUQxIbx0rZ
                          |v $ {} (:text |nil) (:type :leaf) (:at 1507830683551) (:by |root) (:id |ryg7ssXahb)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |HJQmlU-e0rW
                    :type :expr
                    :at 1507830661017
                    :by |root
                    :id |BkxpKj76h-
                :type :expr
                :at 1500541255553
                :by nil
                :id |ryl38_qaJf
            :type :expr
            :at 1500541255553
            :by nil
            :id |ByY-eUZeAr-
          |twig-members $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1614219483262) (:by |B1y7Rc-Zz) (:id |rJG3GYxHhG)
              |j $ {} (:text |twig-members) (:type :leaf) (:at 1524070676419) (:by |root) (:id |rymhzFxH3G)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |sessions) (:type :leaf) (:at 1524070680419) (:by |root) (:id |rygJQFlrnf)
                  |j $ {} (:text |users) (:type :leaf) (:at 1524070708862) (:by |root) (:id |r1-QYlSnf)
                :type :expr
                :at 1524070676419
                :by |root
                :id |Hy4nzKerhG
              |v $ {}
                :data $ {}
                  |T $ {} (:text |->) (:type :leaf) (:at 1619671777595) (:by |B1y7Rc-Zz) (:id |SJxXQKlB2Mleaf)
                  |j $ {} (:text |sessions) (:type :leaf) (:at 1524070692906) (:by |root) (:id |rk7F7txBnM)
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |.to-list) (:type :leaf) (:at 1624862834933) (:by |B1y7Rc-Zz)
                    :type :expr
                    :at 1614611278703
                    :by |B1y7Rc-Zz
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |map) (:type :leaf) (:at 1524070695660) (:by |root) (:id |Hy7T7KeH2z)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |fn) (:type :leaf) (:at 1524070696334) (:by |root) (:id |r1gxVYgrnz)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |pair) (:type :leaf) (:at 1614526033545) (:by |B1y7Rc-Zz)
                            :type :expr
                            :at 1524070696681
                            :by |root
                            :id |HyW4Flr2f
                          |r $ {}
                            :data $ {}
                              |D $ {} (:text |let[]) (:type :leaf) (:at 1614526024290) (:by |B1y7Rc-Zz)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |k) (:type :leaf) (:at 1614526025858) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |session) (:type :leaf) (:at 1614526027636) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614526024660
                                :by |B1y7Rc-Zz
                              |P $ {} (:text |pair) (:type :leaf) (:at 1614526030548) (:by |B1y7Rc-Zz)
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1524070701520) (:by |root) (:id |B1WEVFer3zleaf)
                                  |j $ {} (:text |k) (:type :leaf) (:at 1524070702142) (:by |root) (:id |BJxLVtgH3f)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |get-in) (:type :leaf) (:at 1524070705127) (:by |root) (:id |SkPEYxB3M)
                                      |j $ {} (:text |users) (:type :leaf) (:at 1524070714762) (:by |root) (:id |BklA4FeS3G)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |[]) (:type :leaf) (:at 1524070716715) (:by |root) (:id |r1eXHKxS2z)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:user-id) (:type :leaf) (:at 1524070720176) (:by |root) (:id |SkbrHKeBhM)
                                              |j $ {} (:text |session) (:type :leaf) (:at 1524070722292) (:by |root) (:id |rJMOBteH3f)
                                            :type :expr
                                            :at 1524070717257
                                            :by |root
                                            :id |HkMHSYxB2G
                                          |r $ {} (:text |:name) (:type :leaf) (:at 1524070725752) (:by |root) (:id |r1ZiBKeB3G)
                                        :type :expr
                                        :at 1524070715457
                                        :by |root
                                        :id |rJZ7BKlBnf
                                    :type :expr
                                    :at 1524070702968
                                    :by |root
                                    :id |Hklw4FlH2G
                                :type :expr
                                :at 1524070700350
                                :by |root
                                :id |B1WEVFer3z
                            :type :expr
                            :at 1614526022798
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1524070696021
                        :by |root
                        :id |rkZg4tlH2M
                    :type :expr
                    :at 1524070693234
                    :by |root
                    :id |ByNpmYeS3M
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |pairs-map) (:type :leaf) (:at 1614526275638) (:by |B1y7Rc-Zz) (:id |r1eM8YlS2Mleaf)
                    :type :expr
                    :at 1524070729744
                    :by |root
                    :id |r1eM8YlS2M
                :type :expr
                :at 1524070683188
                :by |root
                :id |SJxXQKlB2M
            :type :expr
            :at 1524070676419
            :by |root
            :id |SkZ3zYeShG
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |H1ubxLZx0SZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkIleLblAr-)
            |j $ {} (:text |app.twig.container) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByDelU-eRSZ)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1txeIZlRSb)
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |app.twig.user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJX-gU-e0SW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hy4We8bgCB-)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |twig-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJv-e8beRSW)
                      :type :expr
                      :at 1500541255553
                      :by nil
                      :id |r1SbgUbg0S-
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |rkZblUblRHb
                |v $ {}
                  :data $ {}
                    |j $ {} (:text "|\"randomcolor") (:type :leaf) (:at 1524279148454) (:by |root) (:id |Syeq8DmOnG)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1524279133262) (:by |root) (:id |S1ezvwQdnz)
                    |v $ {} (:text |color) (:type :leaf) (:at 1524279134256) (:by |root) (:id |rkUvD7u2M)
                  :type :expr
                  :at 1524279121206
                  :by |root
                  :id |HkWtUPm_hM
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |memof.alias) (:type :leaf) (:at 1614221395305) (:by |B1y7Rc-Zz)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1614221396097) (:by |B1y7Rc-Zz)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |memof-call) (:type :leaf) (:at 1614221399308) (:by |B1y7Rc-Zz)
                      :type :expr
                      :at 1614221396290
                      :by |B1y7Rc-Zz
                  :type :expr
                  :at 1614221379796
                  :by |B1y7Rc-Zz
              :type :expr
              :at 1500541255553
              :by nil
              :id |HkOlxUZlRH-
          :type :expr
          :at 1500541255553
          :by nil
          :id |rkSex8bg0S-
      |app.updater $ {}
        :defs $ {}
          |updater $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkV3Qe8WlRHb)
              |j $ {} (:text |updater) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hkrn7xI-gASZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Byw3XlIZg0B-)
                  |j $ {} (:text |op) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1_hme8WxAr-)
                  |r $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByY2QgLbxArZ)
                  |v $ {} (:text |sid) (:type :leaf) (:at 1517930722619) (:by |root) (:id |H1537x8-gABW)
                  |x $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hksn7xL-gASW)
                  |y $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJ22mx8ZeRBb)
                :type :expr
                :at 1500541255553
                :by nil
                :id |rk82mlUZxRB-
              |v $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1517930698044) (:by |root) (:id |rklROHw8z)
                  |T $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |session) (:type :leaf) (:at 1592690550641) (:by |B1y7Rc-Zz) (:id |MYqjRJfllleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |get-in) (:type :leaf) (:at 1592690555595) (:by |B1y7Rc-Zz) (:id |86uFhSp1xn)
                              |j $ {} (:text |db) (:type :leaf) (:at 1592690555932) (:by |B1y7Rc-Zz) (:id |qqqM5pnYGV)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1592690557104) (:by |B1y7Rc-Zz) (:id |JaQwaiY5q)
                                  |j $ {} (:text |:sessions) (:type :leaf) (:at 1592690559221) (:by |B1y7Rc-Zz) (:id |P4cVlNGAAC)
                                  |r $ {} (:text |sid) (:type :leaf) (:at 1592690560293) (:by |B1y7Rc-Zz) (:id |BKx2v2ngQ4)
                                :type :expr
                                :at 1592690556882
                                :by |B1y7Rc-Zz
                                :id |BYszP7NaY0
                            :type :expr
                            :at 1592690553430
                            :by |B1y7Rc-Zz
                            :id |VKN89vDVv
                        :type :expr
                        :at 1592690540885
                        :by |B1y7Rc-Zz
                        :id |MYqjRJfll
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |user) (:type :leaf) (:at 1592690563721) (:by |B1y7Rc-Zz) (:id |NpXkY1JzWleaf)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |if) (:type :leaf) (:at 1619672350501) (:by |B1y7Rc-Zz)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |some?) (:type :leaf) (:at 1619672351876) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |session) (:type :leaf) (:at 1619672353488) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1619672351159
                                :by |B1y7Rc-Zz
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |get-in) (:type :leaf) (:at 1592690564923) (:by |B1y7Rc-Zz) (:id |2lLHSVQwtZ)
                                  |j $ {} (:text |db) (:type :leaf) (:at 1592690565646) (:by |B1y7Rc-Zz) (:id |AgcAOq5vl)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |[]) (:type :leaf) (:at 1592690566313) (:by |B1y7Rc-Zz) (:id |ymiLb-VNn5)
                                      |j $ {} (:text |:users) (:type :leaf) (:at 1592690567241) (:by |B1y7Rc-Zz) (:id |YwXjBnw4lF)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:user-id) (:type :leaf) (:at 1592690572697) (:by |B1y7Rc-Zz) (:id |K5kmLxVz6)
                                          |j $ {} (:text |session) (:type :leaf) (:at 1592690574624) (:by |B1y7Rc-Zz) (:id |KOVKDJwH9O)
                                        :type :expr
                                        :at 1592690570870
                                        :by |B1y7Rc-Zz
                                        :id |t58hS0odzq
                                    :type :expr
                                    :at 1592690566041
                                    :by |B1y7Rc-Zz
                                    :id |5TlTBZfmpw
                                :type :expr
                                :at 1592690563994
                                :by |B1y7Rc-Zz
                                :id |RFBqhi3BZr
                            :type :expr
                            :at 1619672347505
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1592690561305
                        :by |B1y7Rc-Zz
                        :id |NpXkY1JzW
                      |T $ {}
                        :data $ {}
                          |D $ {} (:text |f) (:type :leaf) (:at 1517930699996) (:by |root) (:id |r14RdHv8M)
                          |T $ {}
                            :data $ {}
                              |yT $ {}
                                :data $ {}
                                  |T $ {} (:text |:user/log-out) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1rJ4eIblRr-)
                                  |j $ {} (:text |user/log-out) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryvkVgIbg0rW)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |B1V1Nl8Zx0BZ
                              |yr $ {}
                                :data $ {}
                                  |T $ {} (:text |:router/change) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJDxEeLWgASb)
                                  |j $ {} (:text |router/change) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1tl4lIZx0SW)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |HyUe4gLbxCr-
                              |T $ {} (:text |case-default) (:type :leaf) (:at 1621415206717) (:by |B1y7Rc-Zz) (:id |SJ0h7eUbg0rb)
                              |j $ {} (:text |op) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJyaXeU-gRBZ)
                              |n $ {}
                                :data $ {}
                                  |D $ {} (:text |fn) (:type :leaf) (:at 1621415222644) (:by |B1y7Rc-Zz)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |&) (:type :leaf) (:at 1621415223708) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text |args) (:type :leaf) (:at 1621415225188) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1621415223325
                                    :by |B1y7Rc-Zz
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |println) (:type :leaf) (:at 1621415199179) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text "|\"Unknown op:") (:type :leaf) (:at 1621415199179) (:by |B1y7Rc-Zz)
                                      |r $ {} (:text |op) (:type :leaf) (:at 1621415199179) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1621415199179
                                    :by |B1y7Rc-Zz
                                  |j $ {} (:text |db) (:type :leaf) (:at 1621415227977) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1621415221993
                                :by |B1y7Rc-Zz
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:session/connect) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJZ6XxLWe0HW)
                                  |j $ {} (:text |session/connect) (:type :leaf) (:at 1517930788022) (:by |root) (:id |SksmtSP8z)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |HygpXe8Ze0Sb
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |:session/disconnect) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1cTQlUWlASW)
                                  |j $ {} (:text |session/disconnect) (:type :leaf) (:at 1517930783929) (:by |root) (:id |r1_7FBPIM)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |r1KaQgU-xRrW
                              |w $ {}
                                :data $ {}
                                  |T $ {} (:text |:session/remove-message) (:type :leaf) (:at 1529231483623) (:by |root) (:id |rJ-aIO2Q-Qleaf)
                                  |j $ {} (:text |session/remove-message) (:type :leaf) (:at 1529231491015) (:by |root) (:id |BkrY_h7ZQ)
                                :type :expr
                                :at 1529231445104
                                :by |root
                                :id |Bkx1qO2QZm
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |:user/log-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bkm0mgLZx0S-)
                                  |j $ {} (:text |user/log-in) (:type :leaf) (:at 1517930780888) (:by |root) (:id |BkBmtrD8M)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |r1fCQxUWe0rb
                              |y $ {}
                                :data $ {}
                                  |T $ {} (:text |:user/sign-up) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ry3Cmx8blABb)
                                  |j $ {} (:text |user/sign-up) (:type :leaf) (:at 1517930777757) (:by |root) (:id |Bke-QtSDUM)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |rksRmlIZlCSW
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |BJ6hmlU-lASb
                        :type :expr
                        :at 1517930698683
                        :by |root
                        :id |H1X0OSD8f
                    :type :expr
                    :at 1517930701054
                    :by |root
                    :id |SJlBRdSPUz
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |f) (:type :leaf) (:at 1517930704937) (:by |root) (:id |HyxOAOHDUMleaf)
                      |j $ {} (:text |db) (:type :leaf) (:at 1517930706635) (:by |root) (:id |SkcC_SvLM)
                      |r $ {} (:text |op-data) (:type :leaf) (:at 1517930709018) (:by |root) (:id |HJ2RdSPUf)
                      |v $ {} (:text |sid) (:type :leaf) (:at 1517930725426) (:by |root) (:id |r1JytHD8G)
                      |x $ {} (:text |op-id) (:type :leaf) (:at 1517930717948) (:by |root) (:id |S1z4JKSDLG)
                      |y $ {} (:text |op-time) (:type :leaf) (:at 1517930719120) (:by |root) (:id |BkGLkYrDUz)
                    :type :expr
                    :at 1517930704255
                    :by |root
                    :id |HyxOAOHDUM
                :type :expr
                :at 1517930695338
                :by |root
                :id |rykROrP8f
            :type :expr
            :at 1500541255553
            :by nil
            :id |Hk7nmeIbx0SZ
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |SkfhmgLbxRHb
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ry1omxI-g0r-)
            |j $ {} (:text |app.updater) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryxjmgIZgArZ)
            |r $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |respo-message.updater) (:type :leaf) (:at 1529231113905) (:by |root) (:id |HyE0bP3mWQ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1529231114617) (:by |root) (:id |SJ7GMD27bX)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |update-messages) (:type :leaf) (:at 1529231118760) (:by |root) (:id |SyWVGD2XZQ)
                      :type :expr
                      :at 1529231114849
                      :by |root
                      :id |rJG7Mvn7Z7
                  :type :expr
                  :at 1529231108810
                  :by |root
                  :id |rkpWDhQW7
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkGj7eUZgCrZ)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater.session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BySiQgUZxCS-)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1Ismg8blABW)
                    |v $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkDsme8-l0H-)
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |S1momeUWgRHb
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater.user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H19oXxI-xAH-)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyojQg8WeCH-)
                    |v $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJ2o7eIWeAHb)
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |S1uoQlLWe0HW
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |app.updater.router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1J3XgIZe0SZ)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkgnmg8-x0BZ)
                    |v $ {} (:text |router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkZ3XxLZlCSW)
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |BkTsXxUbg0S-
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1529231007723) (:by |root) (:id |BJXLiI2Qb7)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1529231008972) (:by |root) (:id |SyGuiI3QWX)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1529231009860) (:by |root) (:id |HkZtj8hXZQ)
                  :type :expr
                  :at 1529231005993
                  :by |root
                  :id |Ske8iUnXWm
              :type :expr
              :at 1500541255553
              :by nil
              :id |SJ-o7eUZlRBZ
          :type :expr
          :at 1500541255553
          :by nil
          :id |BJR97lLZlRSZ
      |app.twig.user $ {}
        :defs $ {}
          |twig-user $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1614219471783) (:by |B1y7Rc-Zz) (:id |S1ZqXeIblCH-)
              |j $ {} (:text |twig-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByzcXgUblRBW)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJY57eLWxAH-)
                :type :expr
                :at 1500541255553
                :by nil
                :id |ByuqXg8ZxArZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |dissoc) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bkjc7xUZlCSW)
                  |j $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJ3qXeIbxRHW)
                  |r $ {} (:text |:password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rk6cXgLZx0HZ)
                :type :expr
                :at 1500541255553
                :by nil
                :id |Hk99QgIbxAHW
            :type :expr
            :at 1500541255553
            :by nil
            :id |SJxcQeIWxASZ
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |H1JqQxLblABb
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkVF7xUWgASZ)
            |j $ {} (:text |app.twig.user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkrFQxUZxRBb)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyvKQx8WlRHW)
              :type :expr
              :at 1500541255553
              :by nil
              :id |By8K7xL-eArW
          :type :expr
          :at 1500541255553
          :by nil
          :id |rJ7t7eU-lRrZ
      |app.updater.user $ {}
        :defs $ {}
          |sign-up $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1IyglL-lCHb)
              |j $ {} (:text |sign-up) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJvyxl8WxABZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1KJex8ZlABb)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Sk5JlxL-g0HZ)
                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkokleUZeABW)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r12yllU-xRBW)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkTJegI-eRS-)
                :type :expr
                :at 1500541255553
                :by nil
                :id |H1dJeeUZlCr-
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let-sugar) (:type :leaf) (:at 1614525941324) (:by |B1y7Rc-Zz) (:id |Skklel8-eRH-)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJmlxgU-gABW)
                              |j $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkEllxU-lCSW)
                              |r $ {} (:text |password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryBgxgU-gABb)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |BkMleeIbxAHZ
                          |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyIggxU-xAB-)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |H1Zggx8WxRBW
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |maybe-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bk_gxe8-lASW)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |find) (:type :leaf) (:at 1614525953566) (:by |B1y7Rc-Zz) (:id |r19ellLblAHW)
                              |b $ {}
                                :data $ {}
                                  |T $ {} (:text |vals) (:type :leaf) (:at 1621274990462) (:by |B1y7Rc-Zz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:users) (:type :leaf) (:at 1621274990462) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text |db) (:type :leaf) (:at 1621274990462) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1621274990462
                                    :by |B1y7Rc-Zz
                                :type :expr
                                :at 1621274990462
                                :by |B1y7Rc-Zz
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryhxgg8ZgCrb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkCegeIWlCHZ)
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |H1TxxeIZe0rZ
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJeZxeIZl0HW)
                                      |j $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Byb-llIZl0B-)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:name) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJ7-xxU-lCrW)
                                          |j $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJE-xgLZx0rW)
                                        :type :expr
                                        :at 1500541255553
                                        :by nil
                                        :id |BJGbeg8-xAHW
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |rkJbggLWx0rb
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |Hkillg8ZgAHb
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |rJKxxgI-lRSW
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |H1PxllI-eCHb
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |SyleegL-gRHb
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyobggLbxAS-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJTWeg8-gAS-)
                          |j $ {} (:text |maybe-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJ0WgeLWg0HW)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |HJh-lgLbxAH-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |update-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1eMexLbxCB-)
                          |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkbGxxUZxRrW)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJ7fllLWeRSb)
                              |j $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyVGlgIZg0r-)
                              |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SySGgg8bx0rZ)
                              |v $ {} (:text |:messages) (:type :leaf) (:at 1529231378943) (:by |root) (:id |HyUGglIbeASZ)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |H1fMgx8-e0HW
                          |t $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1529231383493) (:by |root) (:id |Skly7_n7WX)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |messages) (:type :leaf) (:at 1529231385117) (:by |root) (:id |HkgmO3XWm)
                                :type :expr
                                :at 1529231383905
                                :by |root
                                :id |SkleQ_nQZQ
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |assoc) (:type :leaf) (:at 1529231390515) (:by |root) (:id |BkQXunXbm)
                                  |j $ {} (:text |messages) (:type :leaf) (:at 1529231392100) (:by |root) (:id |ByD7O37bX)
                                  |r $ {} (:text |op-id) (:type :leaf) (:at 1529231392968) (:by |root) (:id |S1HdmO2XbX)
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1529231394624) (:by |root) (:id |S1q7O3QbQ)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:id) (:type :leaf) (:at 1529231395240) (:by |root) (:id |S1Zs7dnm-7)
                                          |j $ {} (:text |op-id) (:type :leaf) (:at 1529231395978) (:by |root) (:id |rkUsXu3X-X)
                                        :type :expr
                                        :at 1529231394805
                                        :by |root
                                        :id |SJMj7_3QW7
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:text) (:type :leaf) (:at 1529231398772) (:by |root) (:id |ByT7O37bmleaf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkFQgeUZe0rb)
                                              |j $ {} (:text "|\"Name is taken: ") (:type :leaf) (:at 1586599249174) (:by |B1y7Rc-Zz) (:id |rkcXeeLWxAHb)
                                              |r $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Byi7lx8blCH-)
                                            :type :expr
                                            :at 1500541255553
                                            :by nil
                                            :id |H174dhmZQ
                                        :type :expr
                                        :at 1529231396572
                                        :by |root
                                        :id |ByT7O37bm
                                    :type :expr
                                    :at 1529231394297
                                    :by |root
                                    :id |Syg9mu37WX
                                :type :expr
                                :at 1529231389500
                                :by |root
                                :id |HJrQOhX-7
                            :type :expr
                            :at 1529231383180
                            :by |root
                            :id |HkWymO2QW7
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |BykGxxUWeABW
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |->) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Sy6mllUWeArb)
                          |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rk07lg8ZxCrb)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |assoc-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJg4geIWxRrZ)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1fExeUbeRr-)
                                  |j $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BymVlgLWl0SZ)
                                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkNExgLbeRrZ)
                                  |v $ {} (:text |:user-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkHEgeIbxASb)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |rkbEgeLZg0H-
                              |r $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkLNxxI-gRBZ)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |H1J4lgUWxArZ
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |assoc-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1dNlxLblAH-)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkcVegLbxRHb)
                                  |j $ {} (:text |:users) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SksNle8-lCBZ)
                                  |r $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B12VgeLWlAr-)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |HyKVegIWeAHW
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1RNlgIbxRS-)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1gSgxUZxArb)
                                      |j $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1bHllLZeASW)
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |SyyBxgUblRrb
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:name) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyQHle8-e0r-)
                                      |j $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyNSle8ZeABb)
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |SkGrxgL-xRBb
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:nickname) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1IrlgUZe0HZ)
                                      |j $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkDBxe8bxRSb)
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |BJSHlgLbl0HZ
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1YSgxLZg0S-)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |md5) (:type :leaf) (:at 1621415633381) (:by |B1y7Rc-Zz) (:id |SJZz2DK6WG)
                                          |T $ {} (:text |password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rycSxlL-e0r-)
                                        :type :expr
                                        :at 1513097129906
                                        :by |root
                                        :id |S1lMhvKpZz
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |ryuSgxU-eCSb
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:avatar) (:type :leaf) (:at 1500541255553) (:by |root) (:id |By2Sel8Zx0S-)
                                      |j $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkTSexUZlRrZ)
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |B1iBgxIWlASW
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |rkTExe8ZlCB-
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |SyvVxg8-xAHW
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |rJ2melL-gABW
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |H1cble8beCHZ
                :type :expr
                :at 1500541255553
                :by nil
                :id |Bk0Jxl8We0SZ
            :type :expr
            :at 1500541255553
            :by nil
            :id |SkB1llUZeAH-
          |log-out $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJPaegIWgAHZ)
              |j $ {} (:text |log-out) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkuTeeIbxAB-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJ9pxxIZeRHW)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkjpegUbxArZ)
                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hk3peeU-e0BW)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H16agxUbx0r-)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyRpllIblRSb)
                :type :expr
                :at 1500541255553
                :by nil
                :id |BkFael8ZgRrW
              |v $ {}
                :data $ {}
                  |T $ {} (:text |assoc-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1gRge8WeCBb)
                  |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1WAxxIWlAS-)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HymReg8WgRBZ)
                      |j $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1V0ggLZgCB-)
                      |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJBRgeUbxCHZ)
                      |v $ {} (:text |:user-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJL0egLbe0H-)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |BkzRglUWgCHZ
                  |v $ {} (:text |nil) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJvCgxLbeRB-)
                :type :expr
                :at 1500541255553
                :by nil
                :id |rkyRlxUZxCSZ
            :type :expr
            :at 1500541255553
            :by nil
            :id |Bk8TlgU-xAHZ
          |log-in $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HykIxxLbxAB-)
              |j $ {} (:text |log-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SklIgeLWx0rZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1MUxxI-e0H-)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkXLxgIWeAH-)
                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1NLxxIZxCSZ)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJSLeg8bxRrW)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryULlg8-xCB-)
                :type :expr
                :at 1500541255553
                :by nil
                :id |Sk-UglUZgRHW
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let-sugar) (:type :leaf) (:at 1614525897657) (:by |B1y7Rc-Zz) (:id |rJuLleUZx0HZ)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByhLglUbgCHZ)
                              |j $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJpLxlUZxRBW)
                              |r $ {} (:text |password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyR8leIZx0H-)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |HksLxxU-eRS-
                          |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJJDgxIWg0HZ)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |H158llU-g0Hb
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |maybe-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJ-vgeUWxRBZ)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |->) (:type :leaf) (:at 1619671818697) (:by |B1y7Rc-Zz)
                              |L $ {}
                                :data $ {}
                                  |T $ {} (:text |:users) (:type :leaf) (:at 1614611474366) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |db) (:type :leaf) (:at 1614611474366) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614611474366
                                :by |B1y7Rc-Zz
                              |P $ {}
                                :data $ {}
                                  |T $ {} (:text |vals) (:type :leaf) (:at 1614611480678) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614611479195
                                :by |B1y7Rc-Zz
                              |R $ {}
                                :data $ {}
                                  |T $ {} (:text |.to-list) (:type :leaf) (:at 1623719500287) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614611482997
                                :by |B1y7Rc-Zz
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |find) (:type :leaf) (:at 1614525922202) (:by |B1y7Rc-Zz) (:id |S17Dxl8Zg0SW)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyrPelLWg0rW)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1wwxeUZxAr-)
                                        :type :expr
                                        :at 1500541255553
                                        :by nil
                                        :id |r1Lwee8ZeRB-
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |and) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkYPglIbeAHb)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |=) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryiPxeIbxCSW)
                                              |j $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bk2DxlIZeAHb)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:name) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJ0DxlLWl0BZ)
                                                  |j $ {} (:text |user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hy1uleUWl0BW)
                                                :type :expr
                                                :at 1500541255553
                                                :by nil
                                                :id |ByTPle8-xRSb
                                            :type :expr
                                            :at 1500541255553
                                            :by nil
                                            :id |rycDxgIWxRBZ
                                        :type :expr
                                        :at 1500541255553
                                        :by nil
                                        :id |r1_DxlI-gAS-
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |S1EwlgLWgCHW
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |H1fwgeUWl0Sb
                            :type :expr
                            :at 1614611472628
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |BklDegI-g0H-
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |HyF8ge8WxArb
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |update-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1IdxxIbgAHZ)
                      |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJvuxl8WxRrW)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1Y_xlLWeCH-)
                          |j $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Skcdee8blCBb)
                          |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJsdgeIWg0S-)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |BJudgxL-l0rW
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |fn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJa_egLWlCSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkJtglLbeRSZ)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |rJ0OglL-gRB-
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJZKlxIZg0Bb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |some?) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkQKeg8-l0rW)
                                  |j $ {} (:text |maybe-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJEKglU-x0BW)
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |B1fKge8be0SZ
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |if) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkIFegU-eRSZ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |=) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BydYle8-xCB-)
                                      |j $ {}
                                        :data $ {}
                                          |D $ {} (:text |md5) (:type :leaf) (:at 1621415609168) (:by |B1y7Rc-Zz) (:id |HJgc6vt6bz)
                                          |T $ {} (:text |password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1FFglUWlRH-)
                                        :type :expr
                                        :at 1513097153553
                                        :by |root
                                        :id |HJqpvtTWG
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:password) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1itgeLbxCHZ)
                                          |j $ {} (:text |maybe-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkntxlUZg0SZ)
                                        :type :expr
                                        :at 1500541255553
                                        :by nil
                                        :id |r15YxeLbeABb
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |rJvKex8WgRB-
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |assoc) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJCYgg8WlArb)
                                      |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryk5lgIWgASZ)
                                      |r $ {} (:text |:user-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkl9llIbgCSZ)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Syf5gxIWg0rZ)
                                          |j $ {} (:text |maybe-user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJX5eeUWxArb)
                                        :type :expr
                                        :at 1500541255553
                                        :by nil
                                        :id |S1b5elUZgRSb
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |HJ6Ylg8ZxCrZ
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |update) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkHcgxI-xRS-)
                                      |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryUqex8ZlRr-)
                                      |r $ {} (:text |:messages) (:type :leaf) (:at 1529231216021) (:by |root) (:id |BkwqxeIbe0SZ)
                                      |s $ {}
                                        :data $ {}
                                          |T $ {} (:text |fn) (:type :leaf) (:at 1529231334066) (:by |root) (:id |Hklpydn7-m)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |messages) (:type :leaf) (:at 1529231335300) (:by |root) (:id |SyMRkOhmZX)
                                            :type :expr
                                            :at 1529231334315
                                            :by |root
                                            :id |HJXR1d2mZm
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |assoc) (:type :leaf) (:at 1529231336782) (:by |root) (:id |BJeexunXbQleaf)
                                              |j $ {} (:text |messages) (:type :leaf) (:at 1529231338079) (:by |root) (:id |SyMbxunmWX)
                                              |r $ {} (:text |op-id) (:type :leaf) (:at 1529231340776) (:by |root) (:id |ryBzlu27bQ)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |{}) (:type :leaf) (:at 1529231341388) (:by |root) (:id |ByWBeuhQZ7)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:id) (:type :leaf) (:at 1529231342464) (:by |root) (:id |r1HBlu2Q-X)
                                                      |j $ {} (:text |op-id) (:type :leaf) (:at 1529231344051) (:by |root) (:id |HJvg_nQ-X)
                                                    :type :expr
                                                    :at 1529231341639
                                                    :by |root
                                                    :id |SJ8lOnmWm
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |:text) (:type :leaf) (:at 1529231345346) (:by |root) (:id |SyFxOnXbmleaf)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |str) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJ5jxg8blArZ)
                                                          |j $ {} (:text "|\"Wrong password for ") (:type :leaf) (:at 1500541255553) (:by |root) (:id |Byisxx8ZeCBb)
                                                          |r $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r12oge8-x0rW)
                                                        :type :expr
                                                        :at 1500541255553
                                                        :by nil
                                                        :id |rkl3ld37bm
                                                    :type :expr
                                                    :at 1529231344564
                                                    :by |root
                                                    :id |SyFxOnXbm
                                                :type :expr
                                                :at 1529231341042
                                                :by |root
                                                :id |HyzSldhQZ7
                                            :type :expr
                                            :at 1529231335850
                                            :by |root
                                            :id |BJeexunXbQ
                                        :type :expr
                                        :at 1529231333614
                                        :by |root
                                        :id |BJAJu27b7
                                    :type :expr
                                    :at 1500541255553
                                    :by nil
                                    :id |HyE5ee8Wx0H-
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |S1SYge8WeABW
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |update) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1AoxlLZg0SZ)
                                  |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByJ3geUWxCHW)
                                  |r $ {} (:text |:messages) (:type :leaf) (:at 1529231357178) (:by |root) (:id |SkxnlxLZgCSW)
                                  |t $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1529231334066) (:by |root) (:id |Hklpydn7-m)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |messages) (:type :leaf) (:at 1529231335300) (:by |root) (:id |SyMRkOhmZX)
                                        :type :expr
                                        :at 1529231334315
                                        :by |root
                                        :id |HJXR1d2mZm
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1529231336782) (:by |root) (:id |BJeexunXbQleaf)
                                          |j $ {} (:text |messages) (:type :leaf) (:at 1529231338079) (:by |root) (:id |SyMbxunmWX)
                                          |r $ {} (:text |op-id) (:type :leaf) (:at 1529231340776) (:by |root) (:id |ryBzlu27bQ)
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |{}) (:type :leaf) (:at 1529231341388) (:by |root) (:id |ByWBeuhQZ7)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:id) (:type :leaf) (:at 1529231342464) (:by |root) (:id |r1HBlu2Q-X)
                                                  |j $ {} (:text |op-id) (:type :leaf) (:at 1529231344051) (:by |root) (:id |HJvg_nQ-X)
                                                :type :expr
                                                :at 1529231341639
                                                :by |root
                                                :id |SJ8lOnmWm
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:text) (:type :leaf) (:at 1529231345346) (:by |root) (:id |SyFxOnXbmleaf)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |str) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SkmallLbeCBW)
                                                      |j $ {} (:text "|\"No user named: ") (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1EpxxUWlRrb)
                                                      |r $ {} (:text |username) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryHpel8blArb)
                                                    :type :expr
                                                    :at 1500541255553
                                                    :by nil
                                                    :id |BkgjZu3X-Q
                                                :type :expr
                                                :at 1529231344564
                                                :by |root
                                                :id |SyFxOnXbm
                                            :type :expr
                                            :at 1529231341042
                                            :by |root
                                            :id |HyzSldhQZ7
                                        :type :expr
                                        :at 1529231335850
                                        :by |root
                                        :id |BJeexunXbQ
                                    :type :expr
                                    :at 1529231333614
                                    :by |root
                                    :id |HkbDb_3m-m
                                :type :expr
                                :at 1500541255553
                                :by nil
                                :id |HJpselLbgRS-
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |rkxYleIZl0rW
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |Hk3_elLbxArb
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |ryBOgxUZlCB-
                :type :expr
                :at 1500541255553
                :by nil
                :id |r1DUeeI-g0BZ
            :type :expr
            :at 1500541255553
            :by nil
            :id |SJArel8-e0Sb
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |B141llLbeCBW
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1KCx8bgAH-)
            |j $ {} (:text |app.updater.user) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Sk5AgLWlRrb)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r13AgIWlAS-)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |cumulo-util.core) (:type :leaf) (:at 1544376588044) (:by |B1y7Rc-Zz) (:id |SJJ1eeLWxCH-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJgJegUbeCB-)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |find-first) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJQkxg8WgCH-)
                      :type :expr
                      :at 1500541255553
                      :by nil
                      :id |S1-yel8ZgAB-
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |H16ClL-l0SZ
                |r $ {}
                  :data $ {}
                    |j $ {} (:text "|\"md5") (:type :leaf) (:at 1544376589649) (:by |B1y7Rc-Zz) (:id |H1GPjPKpZf)
                    |r $ {} (:text |:default) (:type :leaf) (:at 1621415612044) (:by |B1y7Rc-Zz) (:id |r1-ciPFpWG)
                    |v $ {} (:text |md5) (:type :leaf) (:at 1513097123766) (:by |root) (:id |SkQojvtaWG)
                  :type :expr
                  :at 1513097118588
                  :by |root
                  :id |rkDjPKTbf
              :type :expr
              :at 1500541255553
              :by nil
              :id |ryi0xL-lCH-
          :type :expr
          :at 1500541255553
          :by nil
          :id |SyuRgL-x0HZ
      |app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyIkf9Uxx0Bb)
              |j $ {} (:text |comp-profile) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1vkzqLgl0H-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |user) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1KyfcUggCrb)
                  |j $ {} (:text |members) (:type :leaf) (:at 1524070827396) (:by |root) (:id |SJ-ntlBnM)
                :type :expr
                :at 1500541010211
                :by nil
                :id |rkOyMqUexRSW
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyskGcUlxRSb)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Skpkzc8xgAH-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkJeG5UxlASW)
                          |j $ {}
                            :data $ {}
                              |D $ {} (:text |merge) (:type :leaf) (:at 1519314674218) (:by |root) (:id |rk5evv3Dz)
                              |T $ {} (:text |ui/flex) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyleG58xgCBb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1519314675207) (:by |root) (:id |S1jxDD2vf)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1519314677667) (:by |root) (:id |SymslwPhwG)
                                      |j $ {} (:text |16) (:type :leaf) (:at 1519314678341) (:by |root) (:id |HybAgPP2Pf)
                                    :type :expr
                                    :at 1519314675496
                                    :by |root
                                    :id |HyVigvwnPG
                                :type :expr
                                :at 1519314674864
                                :by |root
                                :id |BklixPv3Pz
                            :type :expr
                            :at 1519314673230
                            :by |root
                            :id |rketgDP2wz
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |Bk0yG5IleRHb
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |HJn1fqUgxABb
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1524070753742) (:by |root) (:id |SyfKPFxrhM)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1524070754337) (:by |root) (:id |SkW9vFgS3f)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1524070764960) (:by |root) (:id |SkeV_KlBhM)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1524070765499) (:by |root) (:id |H17BOYeShG)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1524070768913) (:by |root) (:id |HJ8_txr3G)
                                      |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1524070771373) (:by |root) (:id |HyzKOtlB3f)
                                    :type :expr
                                    :at 1524070765707
                                    :by |root
                                    :id |rylIuYgrhf
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-size) (:type :leaf) (:at 1524070774437) (:by |root) (:id |By6_YeS3Mleaf)
                                      |j $ {} (:text |32) (:type :leaf) (:at 1524070786249) (:by |root) (:id |B1EROKlShG)
                                    :type :expr
                                    :at 1524070772863
                                    :by |root
                                    :id |By6_YeS3M
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-weight) (:type :leaf) (:at 1524070781489) (:by |root) (:id |SJXKFeHnMleaf)
                                      |j $ {} (:text |100) (:type :leaf) (:at 1524070782585) (:by |root) (:id |Bk8KtgS2M)
                                    :type :expr
                                    :at 1524070778614
                                    :by |root
                                    :id |SJXKFeHnM
                                :type :expr
                                :at 1524070765167
                                :by |root
                                :id |BkNrOYlHnf
                            :type :expr
                            :at 1524070764197
                            :by |root
                            :id |HJ-VuKgBnM
                        :type :expr
                        :at 1524070753977
                        :by |root
                        :id |BJG9DFxBnz
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkflGc8leCHW)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |str) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Syrxf9Uex0S-)
                              |j $ {} (:text "|\"Hello! ") (:type :leaf) (:at 1562176409054) (:by |B1y7Rc-Zz) (:id |Bk8ef9UggCH-)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:name) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkdlMqIleCBZ)
                                  |j $ {} (:text |user) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryteG9Lgg0Bb)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |SyvgGc8ge0Hb
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |Hk4xfc8ex0BZ
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |r1bxMcIleASW
                    :type :expr
                    :at 1524070753023
                    :by |root
                    :id |HJbFwYlS2f
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1524070803450) (:by |root) (:id |rygF9Yer2Gleaf)
                      |j $ {} (:text |nil) (:type :leaf) (:at 1524070804372) (:by |root) (:id |BJh5txHhz)
                      |r $ {} (:text |16) (:type :leaf) (:at 1524070805591) (:by |root) (:id |r1p5KgH2z)
                    :type :expr
                    :at 1524070801446
                    :by |root
                    :id |rygF9Yer2G
                  |u $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1524070807601) (:by |root) (:id |H1kotlHnMleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1524070808172) (:by |root) (:id |BkeesteS2G)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1524070886268) (:by |root) (:id |Sye519lHhM)
                              |j $ {} (:text |ui/row) (:type :leaf) (:at 1524070890021) (:by |root) (:id |rym0kqeB2z)
                            :type :expr
                            :at 1524070882494
                            :by |root
                            :id |B1Zrlcer3z
                        :type :expr
                        :at 1524070807801
                        :by |root
                        :id |rJZeiKlS2M
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1524070810352) (:by |root) (:id |HkgZjKlHhzleaf)
                          |j $ {} (:text "|\"Members:") (:type :leaf) (:at 1524070906296) (:by |root) (:id |r1bfoFgr3z)
                        :type :expr
                        :at 1524070808914
                        :by |root
                        :id |HkgZjKlHhz
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1524070907693) (:by |root) (:id |B1e7-cgShMleaf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1524071002316) (:by |root) (:id |BJeVbqlS2G)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1524070908955) (:by |root) (:id |HkSWqxB3f)
                        :type :expr
                        :at 1524070907095
                        :by |root
                        :id |B1e7-cgShM
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |list->) (:type :leaf) (:at 1524070815507) (:by |root) (:id |Syl8oKlB3Mleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1524070816388) (:by |root) (:id |SkujYgS3f)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1524070886268) (:by |root) (:id |Sye519lHhM)
                                  |j $ {} (:text |ui/row) (:type :leaf) (:at 1524070890021) (:by |root) (:id |rym0kqeB2z)
                                :type :expr
                                :at 1524070882494
                                :by |root
                                :id |BkW5yqxShM
                            :type :expr
                            :at 1524070815884
                            :by |root
                            :id |ByeuiFeH2f
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |->) (:type :leaf) (:at 1619671796147) (:by |B1y7Rc-Zz) (:id |BJltsYgrhz)
                              |j $ {} (:text |members) (:type :leaf) (:at 1524070823331) (:by |root) (:id |BJe2jFlShG)
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |.to-list) (:type :leaf) (:at 1624862842155) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614611343411
                                :by |B1y7Rc-Zz
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |map) (:type :leaf) (:at 1524070853516) (:by |root) (:id |HkhaKeSnz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1524070854836) (:by |root) (:id |ByRaYxH3M)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |pair) (:type :leaf) (:at 1614525491436) (:by |B1y7Rc-Zz)
                                        :type :expr
                                        :at 1524070855268
                                        :by |root
                                        :id |By-JCtgrnM
                                      |r $ {}
                                        :data $ {}
                                          |D $ {} (:text |let[]) (:type :leaf) (:at 1614525484271) (:by |B1y7Rc-Zz)
                                          |L $ {}
                                            :data $ {}
                                              |T $ {} (:text |k) (:type :leaf) (:at 1614525486134) (:by |B1y7Rc-Zz)
                                              |j $ {} (:text |username) (:type :leaf) (:at 1614525487206) (:by |B1y7Rc-Zz)
                                            :type :expr
                                            :at 1614525484629
                                            :by |B1y7Rc-Zz
                                          |P $ {} (:text |pair) (:type :leaf) (:at 1614525488905) (:by |B1y7Rc-Zz)
                                          |T $ {}
                                            :data $ {}
                                              |T $ {} (:text |[]) (:type :leaf) (:at 1524070862624) (:by |root) (:id |SyW8CFeS3zleaf)
                                              |j $ {} (:text |k) (:type :leaf) (:at 1524070863576) (:by |root) (:id |SyWPAFgBhM)
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |div) (:type :leaf) (:at 1524070935603) (:by |root) (:id |SJedAtxShG)
                                                  |b $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |{}) (:type :leaf) (:at 1524070936321) (:by |root) (:id |ByegX5er2z)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |:style) (:type :leaf) (:at 1524070945311) (:by |root) (:id |rJ-HX9eB3z)
                                                          |j $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |{}) (:type :leaf) (:at 1524070951279) (:by |root) (:id |BkmFQ5eB2G)
                                                              |j $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:padding) (:type :leaf) (:at 1524070953379) (:by |root) (:id |BybJE5xB2f)
                                                                  |j $ {} (:text "|\"0 8px") (:type :leaf) (:at 1524070959440) (:by |root) (:id |BJUbV9xShG)
                                                                :type :expr
                                                                :at 1524070952343
                                                                :by |root
                                                                :id |By-xE9xShf
                                                              |r $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:border) (:type :leaf) (:at 1524070967712) (:by |root) (:id |SyA4qlSnMleaf)
                                                                  |j $ {}
                                                                    :data $ {}
                                                                      |T $ {} (:text |str) (:type :leaf) (:at 1524070968711) (:by |root) (:id |ByllrcxH3M)
                                                                      |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1524070971580) (:by |root) (:id |SJ-bSclH2G)
                                                                      |r $ {}
                                                                        :data $ {}
                                                                          |T $ {} (:text |hsl) (:type :leaf) (:at 1524070973331) (:by |root) (:id |HJHrcxBnz)
                                                                          |j $ {} (:text |0) (:type :leaf) (:at 1524070973606) (:by |root) (:id |S14rr9gH3z)
                                                                          |r $ {} (:text |0) (:type :leaf) (:at 1524070973793) (:by |root) (:id |BkxUr5gB3f)
                                                                          |v $ {} (:text |80) (:type :leaf) (:at 1524071006553) (:by |root) (:id |r1MLr5eBhM)
                                                                        :type :expr
                                                                        :at 1524070972774
                                                                        :by |root
                                                                        :id |BJlSr5gB3M
                                                                    :type :expr
                                                                    :at 1524070968157
                                                                    :by |root
                                                                    :id |rkbxS9lr2f
                                                                :type :expr
                                                                :at 1524070965836
                                                                :by |root
                                                                :id |SyA4qlSnM
                                                              |v $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:border-radius) (:type :leaf) (:at 1524070984655) (:by |root) (:id |ryz3rcxBhGleaf)
                                                                  |j $ {} (:text "|\"16px") (:type :leaf) (:at 1524070992141) (:by |root) (:id |SkWZI5lrhz)
                                                                :type :expr
                                                                :at 1524070980253
                                                                :by |root
                                                                :id |ryz3rcxBhG
                                                              |x $ {}
                                                                :data $ {}
                                                                  |T $ {} (:text |:margin) (:type :leaf) (:at 1524070996433) (:by |root) (:id |HysU5lHnfleaf)
                                                                  |j $ {} (:text "|\"0 4px") (:type :leaf) (:at 1524071016063) (:by |root) (:id |BkaI5gS3f)
                                                                :type :expr
                                                                :at 1524070994599
                                                                :by |root
                                                                :id |HysU5lHnf
                                                            :type :expr
                                                            :at 1524070945552
                                                            :by |root
                                                            :id |S15m5eHnM
                                                        :type :expr
                                                        :at 1524070941378
                                                        :by |root
                                                        :id |r1MSX5xrhG
                                                    :type :expr
                                                    :at 1524070935915
                                                    :by |root
                                                    :id |H1-eQ9eB3M
                                                  |j $ {}
                                                    :data $ {}
                                                      |D $ {} (:text |<>) (:type :leaf) (:at 1524070939626) (:by |root) (:id |BJGm9xB3M)
                                                      |T $ {} (:text |username) (:type :leaf) (:at 1524070866665) (:by |root) (:id |HyzFRtlBnz)
                                                    :type :expr
                                                    :at 1524070937486
                                                    :by |root
                                                    :id |ryM-XqxHnz
                                                :type :expr
                                                :at 1524070863870
                                                :by |root
                                                :id |SyZuAKeB2z
                                            :type :expr
                                            :at 1524070862172
                                            :by |root
                                            :id |SyW8CFeS3z
                                        :type :expr
                                        :at 1614525482850
                                        :by |B1y7Rc-Zz
                                    :type :expr
                                    :at 1524070854323
                                    :by |root
                                    :id |Bk-0aYxSnM
                                :type :expr
                                :at 1524070849620
                                :by |root
                                :id |BJ96txShz
                            :type :expr
                            :at 1524070817648
                            :by |root
                            :id |HkcsKlHhG
                        :type :expr
                        :at 1524070813822
                        :by |root
                        :id |Syl8oKlB3M
                    :type :expr
                    :at 1524070806586
                    :by |root
                    :id |H1kotlHnM
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |=<) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkhlz5IglRr-)
                      |r $ {} (:text |nil) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkAefcIlgRrZ)
                      |v $ {} (:text |48) (:type :leaf) (:at 1524070799028) (:by |root) (:id |S1JuFlHhM)
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |BkseG9Lxx0SW
                  |x $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1524070749878) (:by |root) (:id |BJlrDYxBhz)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1524070750478) (:by |root) (:id |HkMUvFeS2f)
                        :type :expr
                        :at 1524070750119
                        :by |root
                        :id |H17IvYlrnf
                      |P $ {}
                        :data $ {}
                          |T $ {} (:text |button) (:type :leaf) (:at 1536750077847) (:by |B1y7Rc-Zz) (:id |uOPXafTZdileaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1536750084550) (:by |B1y7Rc-Zz) (:id |8ZynejYcOp)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1536750086408) (:by |B1y7Rc-Zz) (:id |FinL-2NIc_)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |merge) (:type :leaf) (:at 1536750087218) (:by |B1y7Rc-Zz) (:id |Dzcqtrid-4)
                                      |j $ {} (:text |ui/button) (:type :leaf) (:at 1536750089353) (:by |B1y7Rc-Zz) (:id |HDKedQiLPL)
                                    :type :expr
                                    :at 1536750086649
                                    :by |B1y7Rc-Zz
                                    :id |KHJ6pZvdN
                                :type :expr
                                :at 1536750084800
                                :by |B1y7Rc-Zz
                                :id |WE9kL26nME
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |Qzbn-LQgag)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |yJAC369k1J)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1536750146336) (:by |B1y7Rc-Zz) (:id |0KsZOYBtdZ)
                                          |j $ {} (:text |d!) (:type :leaf) (:at 1536750196752) (:by |B1y7Rc-Zz) (:id |IjGXOjvOaT)
                                        :type :expr
                                        :at 1536750146336
                                        :by |B1y7Rc-Zz
                                        :id |-EI5sPgdhJ
                                      |r $ {}
                                        :data $ {}
                                          |j $ {} (:text |js/location.replace) (:type :leaf) (:at 1562176422166) (:by |B1y7Rc-Zz) (:id |Ns2_BydKNA)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |str) (:type :leaf) (:at 1536750157996) (:by |B1y7Rc-Zz) (:id |mbcbMGu8wf)
                                              |j $ {} (:text |js/location.origin) (:type :leaf) (:at 1536947568308) (:by |root) (:id |DbCo3fk6H)
                                              |r $ {} (:text "|\"?time=") (:type :leaf) (:at 1536947560142) (:by |root) (:id |JRYzWyR7y2)
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |.now) (:type :leaf) (:at 1536750183917) (:by |B1y7Rc-Zz) (:id |XjR6j7fCrg)
                                                  |j $ {} (:text |js/Date) (:type :leaf) (:at 1536750185350) (:by |B1y7Rc-Zz) (:id |lpXN4rI60T)
                                                :type :expr
                                                :at 1536750183293
                                                :by |B1y7Rc-Zz
                                                :id |oPd5dUr6pZ
                                            :type :expr
                                            :at 1536750157447
                                            :by |B1y7Rc-Zz
                                            :id |YmX5Wzb78T
                                        :type :expr
                                        :at 1536750149343
                                        :by |B1y7Rc-Zz
                                        :id |c1hzphaVoc
                                    :type :expr
                                    :at 1536750146336
                                    :by |B1y7Rc-Zz
                                    :id |Ap2ncP6Z17
                                :type :expr
                                :at 1536750146336
                                :by |B1y7Rc-Zz
                                :id |9KqNbw7POH
                            :type :expr
                            :at 1536750078116
                            :by |B1y7Rc-Zz
                            :id |54E1NydiPF
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1536750091205) (:by |B1y7Rc-Zz) (:id |wKN1OxLolleaf)
                              |j $ {} (:text "|\"Refresh") (:type :leaf) (:at 1536750096637) (:by |B1y7Rc-Zz) (:id |El2yUaE7P)
                            :type :expr
                            :at 1536750090761
                            :by |B1y7Rc-Zz
                            :id |wKN1OxLol
                        :type :expr
                        :at 1536750075330
                        :by |B1y7Rc-Zz
                        :id |uOPXafTZdi
                      |R $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1536750643562) (:by |B1y7Rc-Zz) (:id |f9W9pIt6Pleaf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1536750644286) (:by |B1y7Rc-Zz) (:id |yAaDQ5KQcm)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1536750644793) (:by |B1y7Rc-Zz) (:id |RMJuWthIzE)
                        :type :expr
                        :at 1536750643074
                        :by |B1y7Rc-Zz
                        :id |f9W9pIt6P
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |button) (:type :leaf) (:at 1529343433304) (:by |root) (:id |S1gbfqIgl0Sb)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkMWGqUxlRHb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1NbM9UllABW)
                                  |b $ {}
                                    :data $ {}
                                      |D $ {} (:text |merge) (:type :leaf) (:at 1529343526544) (:by |root) (:id |rkxAm0PBbm)
                                      |T $ {} (:text |ui/button) (:type :leaf) (:at 1529343448522) (:by |root) (:id |B1x0CTPS-m)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1529343455629) (:by |root) (:id |SkxvJAvS-m)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:color) (:type :leaf) (:at 1529343457898) (:by |root) (:id |SkeYyCDBWX)
                                              |j $ {} (:text |:red) (:type :leaf) (:at 1529343458855) (:by |root) (:id |S1mckRvHWX)
                                            :type :expr
                                            :at 1529343457115
                                            :by |root
                                            :id |SkWFyCDHZ7
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:border-color) (:type :leaf) (:at 1529343463728) (:by |root) (:id |rkXiyCPHbXleaf)
                                              |j $ {} (:text |:red) (:type :leaf) (:at 1529343464475) (:by |root) (:id |rkZeeAwSbX)
                                            :type :expr
                                            :at 1529343459158
                                            :by |root
                                            :id |rkXiyCPHbX
                                        :type :expr
                                        :at 1529343455186
                                        :by |root
                                        :id |B1lNRPS-m
                                    :type :expr
                                    :at 1529343525553
                                    :by |root
                                    :id |rkCm0Dr-Q
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |SkmbM98xl0SZ
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:on-click) (:type :leaf) (:at 1514302350497) (:by |root) (:id |r1i-McLxeArW)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |fn) (:type :leaf) (:at 1521951456454) (:by |root) (:id |SkICb9UgeRSb)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |e) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkK0W98geAHb)
                                          |j $ {} (:text |dispatch!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |By5CZ5Uxx0BZ)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |HJ_C-q8llCSW
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |dispatch!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkhRb5LllArW)
                                          |j $ {} (:text |:user/log-out) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJaAW9UelCHb)
                                          |r $ {} (:text |nil) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyARWqLegRrW)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |Sks0Z9Ulg0rW
                                      |x $ {}
                                        :data $ {}
                                          |T $ {} (:text |.removeItem) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJlJGqIggAHb)
                                          |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkWyM9Uxx0BZ)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:storage-key) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SymJG5IelASb)
                                              |j $ {} (:text |config/site) (:type :leaf) (:at 1527788933957) (:by |root) (:id |HyNJG5LegRrb)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |BJGJG5UxgCBb
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |HkJJfc8glCHb
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |HJxrymsN5z
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |B1edqskgQf
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |HyWWz9UeeArW
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyC-MqUgeRHW)
                              |r $ {} (:text "|\"Log out") (:type :leaf) (:at 1536750140051) (:by |B1y7Rc-Zz) (:id |BylzzcUllAHZ)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |Hy6bM58lg0r-
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |SyJ-M5IggAHb
                    :type :expr
                    :at 1524070749088
                    :by |root
                    :id |S1rwteS2z
                :type :expr
                :at 1500541010211
                :by nil
                :id |r19kz5Uxx0B-
            :type :expr
            :at 1500541010211
            :by nil
            :id |HJHJG58xgASW
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541010211
          :by nil
          :id |rJ4RbcUxeCBZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bk1s-qLxlAH-)
            |j $ {} (:text |app.comp.profile) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryljZqUglCrZ)
            |v $ {}
              :data $ {}
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJJRW5UegRrW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1gAZc8llRrW)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1XCWcIxlRS-)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |Hy-0b58xxCrW
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |ryTT-cLgxABZ
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788937835) (:by |root) (:id |rk-cB3pyQ)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788938747) (:by |root) (:id |H14fqShakX)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788939786) (:by |root) (:id |B1zm9B3T1Q)
                  :type :expr
                  :at 1527788936196
                  :by |root
                  :id |Skll5r3p1m
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyknZqIgxCBW)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.util.format) (:type :leaf) (:at 1614525505014) (:by |B1y7Rc-Zz) (:id |ryz2-98ggCrW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1X3W58egRrZ)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sk8h-5LgxRBW)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |BJVhZcUelRrZ
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |Bkx3W5LxeRHW
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1F2b98glCBb)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJq3Zc8xxCBb)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyjhZ9UeeRrb)
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |Byw3Z9IexAB-
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516547419785) (:by |root) (:id |H1R2Z58eeCBZ)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyyaWqUee0rZ)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SklpZqLgg0HZ)
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |HJ33Z9Ill0rW
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540962184094) (:by |root) (:id |BJHi-5UxxCSZ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1LsWcIeeArW)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1FjW9UegCSW)
                        |n $ {} (:text |list->) (:type :leaf) (:at 1524070875244) (:by |root) (:id |BkllkcgSnz)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryqiZqUel0B-)
                        |v $ {} (:text |span) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkooW9UgxRrb)
                        |x $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJ2obqIlgCB-)
                        |y $ {} (:text |button) (:type :leaf) (:at 1529343437918) (:by |root) (:id |HyaiWqIgxCrZ)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |HkvjWqUlgRS-
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |HyxIgc3JG
              :type :expr
              :at 1500541010211
              :by nil
              :id |HkCj-9IxgABb
          :type :expr
          :at 1500541010211
          :by nil
          :id |ByC9-5Lee0rW
      |app.comp.login $ {}
        :defs $ {}
          |initial-state $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJN9bcIlg0rW)
              |j $ {} (:text |initial-state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1B9-9Uel0Hb)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hyvq-qIllRrZ)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:username) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryF5b9IgxRB-)
                      |j $ {} (:text "|\"") (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJq5-qUll0rb)
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |Hkd9b5UxgCBW
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:password) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyhcbqUggRHb)
                      |j $ {} (:text "|\"") (:type :leaf) (:at 1500541010211) (:by |root) (:id |S16cbc8lx0Bb)
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |SJs5-qLel0H-
                :type :expr
                :at 1500541010211
                :by nil
                :id |H1IqZcLgg0BW
            :type :expr
            :at 1500541010211
            :by nil
            :id |BkQcW5IlxCrb
          |comp-login $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJBy-qUle0SW)
              |j $ {} (:text |comp-login) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1LyWcUxe0rZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy_yZ5LxlCBZ)
                :type :expr
                :at 1500541010211
                :by nil
                :id |HkPy-qLxlRHb
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ry9JbqLlgRHb)
                  |j $ {}
                    :data $ {}
                      |D $ {}
                        :data $ {}
                          |T $ {} (:text |cursor) (:type :leaf) (:at 1584877228943) (:by |B1y7Rc-Zz) (:id |ghMesJLH51leaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584877231383) (:by |B1y7Rc-Zz) (:id |IsHz9EOQzW)
                              |j $ {} (:text |states) (:type :leaf) (:at 1584877232198) (:by |B1y7Rc-Zz) (:id |SyMQv3vdDp)
                            :type :expr
                            :at 1584877229143
                            :by |B1y7Rc-Zz
                            :id |dROAkbPV4
                        :type :expr
                        :at 1584877226983
                        :by |B1y7Rc-Zz
                        :id |ghMesJLH51
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkT1bqUxlASZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |or) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkJxWc8lxCBW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |:data) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hy-eb9Uxx0HZ)
                                  |j $ {} (:text |states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1GeZq8glCrW)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |BJllZ5Lle0Sb
                              |r $ {} (:text |initial-state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1Xeb9UleCrW)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |Hy0yb98gxABW
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |HynkWcIee0Hb
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |H1j1WcUxxRSb
                  |r $ {}
                    :data $ {}
                      |D $ {} (:text |div) (:type :leaf) (:at 1519368111912) (:by |root) (:id |rJZPnw4TvG)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1519368113787) (:by |root) (:id |S1fd3wN6Dz)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1519368116587) (:by |root) (:id |SJ-9hDETDf)
                              |j $ {}
                                :data $ {}
                                  |5 $ {} (:text |merge) (:type :leaf) (:at 1519368124581) (:by |root) (:id |H1lV6vNaPf)
                                  |D $ {} (:text |ui/flex) (:type :leaf) (:at 1519368123630) (:by |root) (:id |BJxe6vNavM)
                                  |T $ {} (:text |ui/center) (:type :leaf) (:at 1519368119197) (:by |root) (:id |rJlpnDVawM)
                                :type :expr
                                :at 1519368119982
                                :by |root
                                :id |Byg6DV6wz
                            :type :expr
                            :at 1519368114295
                            :by |root
                            :id |SyGqhw46wG
                        :type :expr
                        :at 1519368112156
                        :by |root
                        :id |SJXO3vNaDM
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJrgZ5Llg0Sb)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJvxZcIxlASZ)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |BJIg-9Ule0rZ
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1Fx-cUegRrb)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkixZ9LxgRBZ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1Te-58xeAHb)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bk1WZq8lgCS-)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |H1AgbqLleRrW
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |SJhlW5Ugl0rb
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |ry5gWc8exRSZ
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJWb-5UlxRrZ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hym-ZqLleAS-)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |H1M-WcUggRHZ
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |input) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1H-WqIle0rZ)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1wbZqLeeASW)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:placeholder) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJYWWcLxx0rW)
                                              |j $ {} (:text "|\"Username") (:type :leaf) (:at 1562176475172) (:by |B1y7Rc-Zz) (:id |H15Wb9Ugg0r-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |rJObbc8leRS-
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:value) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hy2bWqIlg0rW)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:username) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkRZ-cIle0H-)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyyM-9UglArZ)
                                                :type :expr
                                                :at 1500541010211
                                                :by nil
                                                :id |HJpWZc8ggRH-
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |SyoWb5UleCSW
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy-fW58glCSZ)
                                              |j $ {} (:text |ui/input) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJGf-5Llx0SW)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |rklGb9LxlRSW
                                          |x $ {}
                                            :data $ {}
                                              |T $ {} (:text |:on-input) (:type :leaf) (:at 1514302367311) (:by |root) (:id |H1_f-5UlxAr-)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |90C3Zd01kB)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |e) (:type :leaf) (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |lI4yDn4OsS)
                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1584877198070) (:by |B1y7Rc-Zz) (:id |zmR6Y2sjVQ)
                                                    :type :expr
                                                    :at 1584877193587
                                                    :by |B1y7Rc-Zz
                                                    :id |_MLMryBx4t
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1584877199765) (:by |B1y7Rc-Zz) (:id |oBQ7fy17Fv)
                                                      |b $ {} (:text |cursor) (:type :leaf) (:at 1584877203771) (:by |B1y7Rc-Zz) (:id |rW_MaPNyN)
                                                      |j $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |XM_DjXkIgs)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |1l4fc9rIMc)
                                                          |r $ {} (:text |:username) (:type :leaf) (:at 1584877206280) (:by |B1y7Rc-Zz) (:id |Cbypyqxvlf)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:value) (:type :leaf) (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |iKFK-RoQ_N)
                                                              |j $ {} (:text |e) (:type :leaf) (:at 1584877193587) (:by |B1y7Rc-Zz) (:id |cYyybTKpglu)
                                                            :type :expr
                                                            :at 1584877193587
                                                            :by |B1y7Rc-Zz
                                                            :id |Jf3juKbnck
                                                        :type :expr
                                                        :at 1584877193587
                                                        :by |B1y7Rc-Zz
                                                        :id |xAB-bHTuhy
                                                    :type :expr
                                                    :at 1584877193587
                                                    :by |B1y7Rc-Zz
                                                    :id |nkgStmvKCp
                                                :type :expr
                                                :at 1584877193587
                                                :by |B1y7Rc-Zz
                                                :id |yEvhp4TxI8
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |rJFis1lQM
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |rkU-bcUleASZ
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |SJNWb9UexCSZ
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |BkxZZ98xeCH-
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |=<) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1RzbqIxl0Sb)
                                  |j $ {} (:text |nil) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy17-5Iex0SW)
                                  |r $ {} (:text |8) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1gQWqUxe0rZ)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |rJ6MW9IxgAH-
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkfm-5IxgASW)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hk4mZ5IxgASW)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |SJX7ZqIeeCB-
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |input) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJU7Zc8xlCSW)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ry_XZ5UglRrZ)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:placeholder) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bk9XZqLglArZ)
                                              |j $ {} (:text "|\"Password") (:type :leaf) (:at 1562176476967) (:by |B1y7Rc-Zz) (:id |HkomWcUlxCBb)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |HyK7bcIexCS-
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |:value) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H16XZc8ee0rb)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:password) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BykV-cLlgAHW)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rylNWcLelArZ)
                                                :type :expr
                                                :at 1500541010211
                                                :by nil
                                                :id |r1C7bcLel0BZ
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |S1hmb98glRSZ
                                          |v $ {}
                                            :data $ {}
                                              |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1zEb9Leg0H-)
                                              |j $ {} (:text |ui/input) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r174W9LllRB-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |rkb4Zq8le0BW
                                          |x $ {}
                                            :data $ {}
                                              |T $ {} (:text |:on-input) (:type :leaf) (:at 1514302370752) (:by |root) (:id |SkYEbqUleRr-)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |fn) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |9LOE50XAuT)
                                                  |j $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |e) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |KuSkVNnefS)
                                                      |j $ {} (:text |d!) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |NC0Q_vwu1X)
                                                    :type :expr
                                                    :at 1584877208805
                                                    :by |B1y7Rc-Zz
                                                    :id |q3r0H2NjM4
                                                  |r $ {}
                                                    :data $ {}
                                                      |T $ {} (:text |d!) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |eIaCFnaFA4)
                                                      |j $ {} (:text |cursor) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |SOT1h9thtC)
                                                      |r $ {}
                                                        :data $ {}
                                                          |T $ {} (:text |assoc) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |dCnOLnMpU_)
                                                          |j $ {} (:text |state) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |hKa4xRNATt)
                                                          |r $ {} (:text |:password) (:type :leaf) (:at 1584877211233) (:by |B1y7Rc-Zz) (:id |1dQhyDb_IC)
                                                          |v $ {}
                                                            :data $ {}
                                                              |T $ {} (:text |:value) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |M-2xeMKIts)
                                                              |j $ {} (:text |e) (:type :leaf) (:at 1584877208805) (:by |B1y7Rc-Zz) (:id |sLJyIcrO1HG)
                                                            :type :expr
                                                            :at 1584877208805
                                                            :by |B1y7Rc-Zz
                                                            :id |iLh5hUVhXb
                                                        :type :expr
                                                        :at 1584877208805
                                                        :by |B1y7Rc-Zz
                                                        :id |_-GEQK_ydE
                                                    :type :expr
                                                    :at 1584877208805
                                                    :by |B1y7Rc-Zz
                                                    :id |iXablXrLXZ
                                                :type :expr
                                                :at 1584877208805
                                                :by |B1y7Rc-Zz
                                                :id |GdTIxfXFjE
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |S1Znooygmf
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |SyPX-qIxxRBb
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |rJHQb58xxRBW
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |rybQZcLeeABW
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |BJOg-5Igx0S-
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |=<) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJyBZc8xgCSZ)
                              |j $ {} (:text |nil) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJlHZ98eg0SZ)
                              |r $ {} (:text |8) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1WSZ58lxArb)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |HkCEZcIegCSb
                          |x $ {}
                            :data $ {}
                              |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ByXH-cLlx0S-)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyHSb58leCHb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkDrZqUlxRBb)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1519368067501) (:by |root) (:id |HyWoFDNaDf)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:text-align) (:type :leaf) (:at 1519368141461) (:by |root) (:id |HyeAv4TPf)
                                              |j $ {} (:text |:right) (:type :leaf) (:at 1519368142240) (:by |root) (:id |B1I0wN6DG)
                                            :type :expr
                                            :at 1519368135916
                                            :by |root
                                            :id |B1xl0wE6wf
                                        :type :expr
                                        :at 1519368067092
                                        :by |root
                                        :id |SyGsFwVaDf
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |BJLSb9LxeASZ
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |r1NBZ5Uxg0BZ
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |span) (:type :leaf) (:at 1519367924372) (:by |root) (:id |HJ9BZcIeeCSb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkhSb5UleABb)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:inner-text) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJ0SZ5Ilx0SW)
                                          |j $ {} (:text "|\"Sign up") (:type :leaf) (:at 1562176479429) (:by |B1y7Rc-Zz) (:id |HJyIZqUleAH-)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |rJTH-9UlgCHW
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1bIZ9IxxAHb)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |merge) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb)
                                              |j $ {} (:text |ui/link) (:type :leaf) (:at 1562176320143) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |SkfLZ5UglArZ
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |rJeIW5Ugx0HZ
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1514302375364) (:by |root) (:id |SkMP-cIgl0rb)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |on-submit) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy4PbcUxgRHZ)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:username) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkLPZ9Lgx0rW)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryPv-5UgxAHZ)
                                                :type :expr
                                                :at 1500541010211
                                                :by nil
                                                :id |ryBvWcUgeCBb
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:password) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyFvW5LglAH-)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1qDZ98geRSW)
                                                :type :expr
                                                :at 1500541010211
                                                :by nil
                                                :id |Byuw-cLxgCBb
                                              |v $ {} (:text |true) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkjwbqLxlAHb)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |rJ7wZ9Lxx0S-
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |Syxb3iJg7G
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |H1sBZ98geRSW
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |BJtHWq8llRSb
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |=<) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJTPZc8xxAHW)
                                  |j $ {} (:text |8) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryCvbqIxlCHZ)
                                  |r $ {} (:text |nil) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyyO-q8glAS-)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |B13wW9IgxCrb
                              |x $ {}
                                :data $ {}
                                  |T $ {} (:text |span) (:type :leaf) (:at 1519367939048) (:by |root) (:id |HkWu-qIgeRrW)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S17d-5UgxCr-)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |:inner-text) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkB_W98xxABZ)
                                          |j $ {} (:text "|\"Log in") (:type :leaf) (:at 1562176481296) (:by |B1y7Rc-Zz) (:id |Sk8OW5LexRrW)
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |Sk4_bq8leCHb
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJ_OZc8lx0Bb)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |merge) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H178Wq8exCSb)
                                              |j $ {} (:text |ui/link) (:type :leaf) (:at 1562176326573) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |r1gEIv46Df
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |HywdZ9LeeRHb
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |:on-click) (:type :leaf) (:at 1514302381488) (:by |root) (:id |BJYF-5Uxe0S-)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |on-submit) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyoKb98elRr-)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:username) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Skptbq8xeCBb)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJRFWc8eeRr-)
                                                :type :expr
                                                :at 1500541010211
                                                :by nil
                                                :id |B1hYZcIxxASb
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |:password) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bkl9-5IlxRB-)
                                                  |j $ {} (:text |state) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJWq-58llAHW)
                                                :type :expr
                                                :at 1500541010211
                                                :by nil
                                                :id |Sk15Z9LleCS-
                                              |v $ {} (:text |false) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJfq-9Lge0B-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |rk9F-cUex0H-
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |HJlw3skxQM
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |HkfdZ9IelABZ
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |Skg_WqIxx0S-
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |rJfHW98egCSb
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |ryEx-5IxlRSW
                    :type :expr
                    :at 1519368111046
                    :by |root
                    :id |HyxD3wVpvM
                :type :expr
                :at 1500541010211
                :by nil
                :id |ryK1bqLeg0rZ
            :type :expr
            :at 1500541010211
            :by nil
            :id |HkN1-cUxxRB-
          |on-submit $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1k3e58glCr-)
              |j $ {} (:text |on-submit) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SylnxqLgg0H-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |username) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkG2lqIxe0SW)
                  |j $ {} (:text |password) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r172xqLexCr-)
                  |r $ {} (:text |signup?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkEhlqIegRB-)
                :type :expr
                :at 1500541010211
                :by nil
                :id |Hk-2e9IglCrW
              |v $ {}
                :data $ {}
                  |T $ {} (:text |fn) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJLhecIxg0rb)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |e) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJOnxqUxx0Sb)
                      |j $ {} (:text |dispatch!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJK2xcLglCHZ)
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |HJDne5LgxASZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |dispatch!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkshx5Lgx0HZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |if) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkT3gqIlgArb)
                          |j $ {} (:text |signup?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJR3gqLegCr-)
                          |r $ {} (:text |:user/sign-up) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r11Te5UxgABZ)
                          |v $ {} (:text |:user/log-in) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1l6e5IgxCBb)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |By22eqIxxRB-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |[]) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1GTxcIleAHb)
                          |j $ {} (:text |username) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hy7ax5LexRHb)
                          |r $ {} (:text |password) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1E6l9Lle0r-)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |By-Tx58xgRSW
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |BJ93x98gg0rW
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |.setItem) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJ8Te9IgeABZ)
                      |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkPpe9IglASZ)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |:storage-key) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1Kal58gl0HZ)
                          |j $ {} (:text |config/site) (:type :leaf) (:at 1527788909281) (:by |root) (:id |ry5alqLglAr-)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |ryO6eq8ex0r-
                      |v $ {}
                        :data $ {}
                          |D $ {} (:text |format-cirru-edn) (:type :leaf) (:at 1623719452605) (:by |B1y7Rc-Zz)
                          |T $ {}
                            :data $ {}
                              |T $ {} (:text |[]) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkhaecLxlRBW)
                              |j $ {} (:text |username) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hk6al98leAHZ)
                              |r $ {} (:text |password) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJ0Te9LexCHZ)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |Hyj6eqIle0S-
                        :type :expr
                        :at 1614525647069
                        :by |B1y7Rc-Zz
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |BySax58xgRBb
                :type :expr
                :at 1500541010211
                :by nil
                :id |SyB2gqIleArb
            :type :expr
            :at 1500541010211
            :by nil
            :id |ryRox98ggCBW
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541010211
          :by nil
          :id |Bkajg9LggCH-
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hk3Ox5LleArW)
            |j $ {} (:text |app.comp.login) (:type :leaf) (:at 1510936619134) (:by |root) (:id |ry6_xqLxgCS-)
            |v $ {}
              :data $ {}
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788913217) (:by |root) (:id |HJGd_rnakm)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788914516) (:by |root) (:id |S1IKdB3aJQ)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788915188) (:by |root) (:id |rJouHhpkQ)
                  :type :expr
                  :at 1527788911549
                  :by |root
                  :id |H1d_S2a1Q
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540962172090) (:by |root) (:id |HyfFecIgxCSZ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ)
                    |v $ {}
                      :data $ {}
                        |yT $ {} (:text |span) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW)
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW)
                        |v $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW)
                        |x $ {} (:text |input) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJttec8elRrW)
                        |y $ {} (:text |button) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |B1VFg98ex0Sb
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |rJxw4e52kz
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |SyF5x98llCSW
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |rkBqe58el0HZ
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.inspect) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-inspect) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |HJxigqIex0Sb
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |S129ecIxeAHZ
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ)
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |rk7ol9IxxABZ
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJ9sgqLxxABW)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1niecUxlCrZ)
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |ry_sxqUeeAHZ
              :type :expr
              :at 1500541010211
              :by nil
              :id |SJ3YeqUlxABZ
          :type :expr
          :at 1500541010211
          :by nil
          :id |Hys_eqLgeAH-
      |app.comp.navigation $ {}
        :defs $ {}
          |comp-navigation $ {}
            :data $ {}
              |T $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb)
              |j $ {} (:text |comp-navigation) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |logged-in?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJxuzcLle0S-)
                  |j $ {} (:text |count-members) (:type :leaf) (:at 1523120365880) (:by |root) (:id |r1W-lK_Lsz)
                :type :expr
                :at 1500541010211
                :by nil
                :id |H11df58le0Bb
              |v $ {}
                :data $ {}
                  |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJM_fc8elAHW)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJNOG5LleABZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkUOfqIxxRS-)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |merge) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1u_z9Ixe0HZ)
                              |j $ {} (:text |ui/row-center) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1YdfcUxxCB-)
                              |r $ {}
                                :data $ {}
                                  |yT $ {}
                                    :data $ {}
                                      |T $ {} (:text |:border-bottom) (:type :leaf) (:at 1519314630138) (:by |root) (:id |Bkl9pLP2Pfleaf)
                                      |j $ {}
                                        :data $ {}
                                          |T $ {} (:text |str) (:type :leaf) (:at 1519314632214) (:by |root) (:id |SJk0UDhDG)
                                          |j $ {} (:text "|\"1px solid ") (:type :leaf) (:at 1562176394986) (:by |B1y7Rc-Zz) (:id |rJEl08P3wf)
                                          |r $ {}
                                            :data $ {}
                                              |T $ {} (:text |hsl) (:type :leaf) (:at 1519314636519) (:by |root) (:id |BJVRIPnvM)
                                              |j $ {} (:text |0) (:type :leaf) (:at 1519314637558) (:by |root) (:id |SklrAUwhvz)
                                              |r $ {} (:text |0) (:type :leaf) (:at 1519314637788) (:by |root) (:id |HJeIRIwnPG)
                                              |v $ {} (:text |0) (:type :leaf) (:at 1519314638678) (:by |root) (:id |ByMUC8vnPM)
                                              |x $ {} (:text |0.1) (:type :leaf) (:at 1519314643853) (:by |root) (:id |HkgD0IwhPM)
                                            :type :expr
                                            :at 1519314635976
                                            :by |root
                                            :id |SyxNRUw2Pz
                                        :type :expr
                                        :at 1519314630743
                                        :by |root
                                        :id |rkgy08vnwf
                                    :type :expr
                                    :at 1519314625999
                                    :by |root
                                    :id |Bkl9pLP2Pf
                                  |yj $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-family) (:type :leaf) (:at 1519314653842) (:by |root) (:id |B1-mkPw2DGleaf)
                                      |j $ {} (:text |ui/font-fancy) (:type :leaf) (:at 1519314661374) (:by |root) (:id |Bkg81wD2wz)
                                    :type :expr
                                    :at 1519314651278
                                    :by |root
                                    :id |B1-mkPw2DG
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Byb2zcIlx0SW)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:height) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJQ2f5LglCSb)
                                      |j $ {} (:text |48) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyEnGqLggRSZ)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |Byz3z9UxgCBb
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |:justify-content) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJY3GqLxgAHb)
                                      |j $ {} (:text |:space-between) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1qhGq8leCSW)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |BJO3GqIex0Bb
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |:padding) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy3nMqLexRBW)
                                      |j $ {} (:text "|\"0 16px") (:type :leaf) (:at 1562176392599) (:by |B1y7Rc-Zz) (:id |H1a2M5LleAH-)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |S1s3M5LglCr-
                                  |y $ {}
                                    :data $ {}
                                      |T $ {} (:text |:font-size) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkkpfcUxeCHb)
                                      |j $ {} (:text |16) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJeazq8llABZ)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |SJR2MqIlx0S-
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |BkAw7iE5z
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |r1vdGcUglRr-
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |SyBufq8elAHZ
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |H1QdzqLge0SW
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hk3dfcUex0rW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkCufcIex0rb)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1514302328636) (:by |root) (:id |SJVtzcUllCSW)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |fn) (:type :leaf) (:at 1584874408856) (:by |B1y7Rc-Zz) (:id |LYV3Zaw3EI)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1584874409848) (:by |B1y7Rc-Zz) (:id |c0mdf8zHpa)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1584874410391) (:by |B1y7Rc-Zz) (:id |xXV5jzhkvf)
                                    :type :expr
                                    :at 1584874409139
                                    :by |B1y7Rc-Zz
                                    :id |qEgyNH8sU
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1584874407853) (:by |B1y7Rc-Zz) (:id |B1iaGcIexAHZ)
                                      |j $ {} (:text |:router/change) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H126zqIglRB-)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJRaG9IxlAB-)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:name) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJg0MqUxe0r-)
                                              |j $ {} (:text |:home) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyWCG5IlgAS-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |BJk0zq8xxCr-
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |Sy6pz58llCrW
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |HyloNmsVcf
                                :type :expr
                                :at 1584874408320
                                :by |B1y7Rc-Zz
                                :id |oZTdE7zVOY
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |BkxztoJgmz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BywKzqUegArW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HydPGq8xeRBb)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:cursor) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJ9wM98lg0B-)
                                      |j $ {} (:text |:pointer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkjwMc8xl0Sb)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |B1FvfqIxgAS-
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |B1BEXo45f
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |ByIFGc8leCBW
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |BJT_z5UgeRB-
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rycKz9UxxABZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:title) (:type :leaf) (:at 1536561772481) (:by |B1y7Rc-Zz) (:id |SJsFG98lxASW)
                              |j $ {} (:text |config/site) (:type :leaf) (:at 1536561776186) (:by |B1y7Rc-Zz) (:id |IpyFO2t-G)
                            :type :expr
                            :at 1536561771096
                            :by |B1y7Rc-Zz
                            :id |PJz4UIM8Cy
                          |v $ {} (:text |nil) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyTtGq8xeASb)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |rJYKf5Leg0BW
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |Bkj_M9LlxCHb
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ByyqzcUglRHZ)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HybqMqUge0SW)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:style) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkX5G5Ueg0rW)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyYjz9UgxCrZ)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:cursor) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJjozqIgl0Sb)
                                      |j $ {} (:text "|\"pointer") (:type :leaf) (:at 1562176402113) (:by |B1y7Rc-Zz) (:id |BknsM58xxRrW)
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |B1ciG9UlxRrW
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |SybUXoVcf
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |BkfcMq8ge0HZ
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:on-click) (:type :leaf) (:at 1514302332444) (:by |root) (:id |Hkc5MqUgeCBb)
                              |j $ {}
                                :data $ {}
                                  |D $ {} (:text |fn) (:type :leaf) (:at 1584874414283) (:by |B1y7Rc-Zz) (:id |OyIJ9gv-L)
                                  |L $ {}
                                    :data $ {}
                                      |T $ {} (:text |e) (:type :leaf) (:at 1584874414785) (:by |B1y7Rc-Zz) (:id |jGyJa2DhXe)
                                      |j $ {} (:text |d!) (:type :leaf) (:at 1584874415332) (:by |B1y7Rc-Zz) (:id |APfcqGkz-j)
                                    :type :expr
                                    :at 1584874414551
                                    :by |B1y7Rc-Zz
                                    :id |-pXUlxJAXK
                                  |T $ {}
                                    :data $ {}
                                      |T $ {} (:text |d!) (:type :leaf) (:at 1584874412408) (:by |B1y7Rc-Zz) (:id |HyvLfcIelAHb)
                                      |j $ {} (:text |:router/change) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1_8fqLxgRHZ)
                                      |r $ {}
                                        :data $ {}
                                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJqIM5LexCH-)
                                          |j $ {}
                                            :data $ {}
                                              |T $ {} (:text |:name) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJ3LM5LgxABb)
                                              |j $ {} (:text |:profile) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJT8GqIgxRr-)
                                            :type :expr
                                            :at 1500541010211
                                            :by nil
                                            :id |SyjIfc8ggAHZ
                                        :type :expr
                                        :at 1500541010211
                                        :by nil
                                        :id |S1KIfc8xx0Sb
                                    :type :expr
                                    :at 1500541010211
                                    :by nil
                                    :id |SkwUXjN5z
                                :type :expr
                                :at 1584874413029
                                :by |B1y7Rc-Zz
                                :id |R4jMOUYLbQ
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |SJeLFokgXG
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |rkl5GcLglABW
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJ69McLelASZ)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |if) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkesM9IllRBZ)
                              |j $ {} (:text |logged-in?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1bjz98xxRSb)
                              |r $ {} (:text "|\"Me") (:type :leaf) (:at 1562176400207) (:by |B1y7Rc-Zz) (:id |Syziz98ggAS-)
                              |v $ {} (:text "|\"Guest") (:type :leaf) (:at 1562176397757) (:by |B1y7Rc-Zz) (:id |Hk7izqLel0rb)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |ByysG5UgxABb
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |Hkhcfq8gx0Sb
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |=<) (:type :leaf) (:at 1523120369974) (:by |root) (:id |BkeFgYdUifleaf)
                          |j $ {} (:text |8) (:type :leaf) (:at 1523120371053) (:by |root) (:id |S1lcgFd8if)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1523120371555) (:by |root) (:id |HyeogYO8jM)
                        :type :expr
                        :at 1523120369216
                        :by |root
                        :id |BkeFgYdUif
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |<>) (:type :leaf) (:at 1523120372630) (:by |root) (:id |Hk-2xtuUjfleaf)
                          |j $ {} (:text |count-members) (:type :leaf) (:at 1523120373023) (:by |root) (:id |HkZpxFdIiM)
                        :type :expr
                        :at 1523120371997
                        :by |root
                        :id |Hk-2xtuUjf
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |H10FM9IeeRBb
                :type :expr
                :at 1500541010211
                :by nil
                :id |rkW_zqUxlCrZ
            :type :expr
            :at 1500541010211
            :by nil
            :id |Bk2vfqUxl0BZ
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541010211
          :by nil
          :id |SJ1Uz9LeeAB-
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb)
            |j $ {} (:text |app.comp.navigation) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ)
            |v $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.util.format) (:type :leaf) (:at 1614525468021) (:by |B1y7Rc-Zz) (:id |HkY4z5IllCHb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |hsl) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |HJsNzqLleASW
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |BywNMcUleAHb
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo-ui.core) (:type :leaf) (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-)
                    |v $ {} (:text |ui) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ)
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |HkCNz98el0Bb
                |w $ {}
                  :data $ {}
                    |j $ {} (:text |respo.comp.space) (:type :leaf) (:at 1523120379036) (:by |root) (:id |Sk--WFuIoG)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1523120382218) (:by |root) (:id |By4XbFu8oG)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |=<) (:type :leaf) (:at 1523120383255) (:by |root) (:id |BkGPZKu8oM)
                      :type :expr
                      :at 1523120382545
                      :by |root
                      :id |r1DWtdUjM
                  :type :expr
                  :at 1523120376505
                  :by |root
                  :id |BkxlWtdUjM
                |x $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1540962179719) (:by |root) (:id |HJp7zc8xxArZ)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |defcomp) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-)
                        |r $ {} (:text |<>) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb)
                        |v $ {} (:text |span) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ)
                        |x $ {} (:text |div) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |SyJNG5IexArb
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |SkVQg5h1z
                |y $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1536561755369) (:by |B1y7Rc-Zz) (:id |Y_HhVDj3zn)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1536561758845) (:by |B1y7Rc-Zz) (:id |D0d_mzNKRn)
                    |v $ {} (:text |config) (:type :leaf) (:at 1536561761903) (:by |B1y7Rc-Zz) (:id |sJXt922sWs)
                  :type :expr
                  :at 1536561755369
                  :by |B1y7Rc-Zz
                  :id |3JW2PGwjK4
              :type :expr
              :at 1500541010211
              :by nil
              :id |S1HVf5UxlRHZ
          :type :expr
          :at 1500541010211
          :by nil
          :id |BkUXGcUegABW
      |app.updater.router $ {}
        :defs $ {}
          |change $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hy4gLZgABZ)
              |j $ {} (:text |change) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByBlIWg0S-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ)
                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hkog8blRSW)
                :type :expr
                :at 1500541255553
                :by nil
                :id |SkIxIWgAHZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |assoc-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1al8ZxAB-)
                  |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1ClU-xRB-)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HklggLbxRB-)
                      |j $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hk-xxUbeRSZ)
                      |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyzlgIZgCSb)
                      |v $ {} (:text |:router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkQgxU-l0Bb)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |Hk1geLWx0H-
                  |v $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B14gg8WxCrb)
                :type :expr
                :at 1500541255553
                :by nil
                :id |BkhgI-xCrb
            :type :expr
            :at 1500541255553
            :by nil
            :id |ryQxUbg0B-
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |HJzeUWeAr-
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1eeUbeCrZ)
            |j $ {} (:text |app.updater.router) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1-l8We0BW)
          :type :expr
          :at 1500541255553
          :by nil
          :id |S1eLbxASW
      |app.updater.session $ {}
        :defs $ {}
          |disconnect $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bknx-g8-gASW)
              |j $ {} (:text |disconnect) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ByalZeUblRB-)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ)
                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ)
                :type :expr
                :at 1500541255553
                :by nil
                :id |rkCxZl8WxCH-
              |v $ {}
                :data $ {}
                  |T $ {} (:text |update) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkrbZe8blCrZ)
                  |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyL-Wx8WgABb)
                  |r $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1v-Wx8ZlCBb)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |fn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyKZZxUbxRBb)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyjWWlLWe0HW)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |HyqWZlU-lCHb
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |dissoc) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Bka-Zg8beAS-)
                          |j $ {} (:text |session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJAZZl8ZgABZ)
                          |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1yMbeI-e0BW)
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |Syh-WgIZxCHZ
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |rJ_-ZgUbx0H-
                :type :expr
                :at 1500541255553
                :by nil
                :id |rJ4ZWeUWeArb
            :type :expr
            :at 1500541255553
            :by nil
            :id |HJsgZx8-lCr-
          |remove-message $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1529231499908) (:by |root) (:id |rkMV9_nQZQ)
              |j $ {} (:text |remove-message) (:type :leaf) (:at 1529231499908) (:by |root) (:id |HymV5_27ZX)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ)
                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ)
                :type :expr
                :at 1500541255553
                :by nil
                :id |rk5cu3XWm
              |v $ {}
                :data $ {}
                  |T $ {} (:text |update-in) (:type :leaf) (:at 1529231507936) (:by |root) (:id |H1icunXWQleaf)
                  |j $ {} (:text |db) (:type :leaf) (:at 1529231509725) (:by |root) (:id |r1TcOh7Z7)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1529231510376) (:by |root) (:id |SyMC9_2XZQ)
                      |j $ {} (:text |:sessions) (:type :leaf) (:at 1529231511756) (:by |root) (:id |SkIRq_nmWm)
                      |r $ {} (:text |sid) (:type :leaf) (:at 1529231512509) (:by |root) (:id |HkGejd2QZX)
                      |v $ {} (:text |:messages) (:type :leaf) (:at 1529231515700) (:by |root) (:id |BJZj_hQ-m)
                    :type :expr
                    :at 1529231509958
                    :by |root
                    :id |H1QCcOnQ-X
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1529231534991) (:by |root) (:id |Syv3_27ZX)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |messages) (:type :leaf) (:at 1529231536189) (:by |root) (:id |BkfPhun7bQ)
                        :type :expr
                        :at 1529231535248
                        :by |root
                        :id |HJXvh_3XWX
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |dissoc) (:type :leaf) (:at 1529231517957) (:by |root) (:id |r1Bi_2XZXleaf)
                          |j $ {} (:text |messages) (:type :leaf) (:at 1529231519342) (:by |root) (:id |S1m8sOh7ZQ)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:id) (:type :leaf) (:at 1529231522521) (:by |root) (:id |HyvvoO2QWQ)
                              |j $ {} (:text |op-data) (:type :leaf) (:at 1529231524125) (:by |root) (:id |rJxjjdnQZQ)
                            :type :expr
                            :at 1529231521395
                            :by |root
                            :id |ryXYs_hXb7
                        :type :expr
                        :at 1529231516827
                        :by |root
                        :id |r1Bi_2XZX
                    :type :expr
                    :at 1529231534326
                    :by |root
                    :id |H1bU2_hmZQ
                :type :expr
                :at 1529231506714
                :by |root
                :id |H1icunXWQ
            :type :expr
            :at 1529231499908
            :by |root
            :id |S1Z4cd3X-7
          |connect $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SJ4ybe8-g0Sb)
              |j $ {} (:text |connect) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1SyWx8bxABW)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HJv1Wl8WgRBZ)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hk_JWeLZg0Hb)
                  |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryYkWl8Wx0SZ)
                  |v $ {} (:text |op-id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HyqJ-l8-lCBZ)
                  |x $ {} (:text |op-time) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1jk-lIWlASb)
                :type :expr
                :at 1500541255553
                :by nil
                :id |ry8k-eUbgCr-
              |v $ {}
                :data $ {}
                  |T $ {} (:text |assoc-in) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rka1blIZeRrW)
                  |j $ {} (:text |db) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B1Ry-lIZgRrZ)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |[]) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BJgeZeLbe0HZ)
                      |j $ {} (:text |:sessions) (:type :leaf) (:at 1500541255553) (:by |root) (:id |HkWeWlLbl0rb)
                      |r $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |SyfgWx8WeAHW)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |r1klbeIWeRSZ
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |merge) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rkNeWeUWx0HW)
                      |j $ {} (:text |schema/session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkBxWxIZxArW)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Skwebg8-gArb)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:id) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryKxZl8-x0SZ)
                              |j $ {} (:text |sid) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r19ebe8WeArW)
                            :type :expr
                            :at 1500541255553
                            :by nil
                            :id |BkdxZxL-l0S-
                        :type :expr
                        :at 1500541255553
                        :by nil
                        :id |HkUxZeLZxRrb
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |rJ7xbgI-eAHb
                :type :expr
                :at 1500541255553
                :by nil
                :id |rJhyZe8blCHW
            :type :expr
            :at 1500541255553
            :by nil
            :id |HyQ1WeI-xABW
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541255553
          :by nil
          :id |rJGJZgL-x0rZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541255553) (:by |root) (:id |H1t0llUZg0r-)
            |j $ {} (:text |app.updater.session) (:type :leaf) (:at 1500541255553) (:by |root) (:id |ryq0ee8Wl0BZ)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541255553) (:by |root) (:id |B12AggIZl0rW)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1500541255553) (:by |root) (:id |BkyJbxUWxCH-)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541255553) (:by |root) (:id |S1xyWgUWlRHb)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1500541255553) (:by |root) (:id |By-J-xU-gABb)
                  :type :expr
                  :at 1500541255553
                  :by nil
                  :id |SyaAlgIZeCSW
              :type :expr
              :at 1500541255553
              :by nil
              :id |rJs0xxI-g0rZ
          :type :expr
          :at 1500541255553
          :by nil
          :id |Sy_0leLZgCrW
      |app.client $ {}
        :defs $ {}
          |render-app! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJS3QqLglABb)
              |j $ {} (:text |render-app!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyI3Q58elRrW)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1500541010211
                :by nil
                :id |Byv2X98ggArZ
              |v $ {}
                :data $ {}
                  |T $ {} (:text |render!) (:type :leaf) (:at 1624470229531) (:by |B1y7Rc-Zz) (:id |rkq3QqIglCHZ)
                  |j $ {} (:text |mount-target) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bysn79Igl0H-)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |comp-container) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy6nmc8el0rW)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |:states) (:type :leaf) (:at 1584880511636) (:by |B1y7Rc-Zz) (:id |75AuqOvLz)
                          |T $ {} (:text |@*states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJR2Q5UlxCBW)
                        :type :expr
                        :at 1584880509935
                        :by |B1y7Rc-Zz
                        :id |dg4hzeLvDw
                      |r $ {} (:text |@*store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy1p7c8ex0rZ)
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |By2n7qLeeAS-
                  |v $ {} (:text |dispatch!) (:type :leaf) (:at 1512318370491) (:by |B1y7Rc-Zz) (:id |r1gcsBi-ZG)
                :type :expr
                :at 1500541010211
                :by nil
                :id |SJK375UlxCHb
            :type :expr
            :at 1500541010211
            :by nil
            :id |B1Eh7cIxeCrZ
          |*states $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1614526454434) (:by |B1y7Rc-Zz) (:id |BJqtmc8gx0BZ)
              |j $ {} (:text |*states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJjtXqUxg0SZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyJ975UexAHW)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:states) (:type :leaf) (:at 1584880530868) (:by |B1y7Rc-Zz) (:id |1GDjFomnM-)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1584880532120) (:by |B1y7Rc-Zz) (:id |Bn7orHMVAa)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:cursor) (:type :leaf) (:at 1584880536346) (:by |B1y7Rc-Zz) (:id |ZZ5bgHrI0)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |[]) (:type :leaf) (:at 1584880536837) (:by |B1y7Rc-Zz) (:id |vLzhsv8-1P)
                                :type :expr
                                :at 1584880536607
                                :by |B1y7Rc-Zz
                                :id |VrKjvp-zAs
                            :type :expr
                            :at 1584880533921
                            :by |B1y7Rc-Zz
                            :id |RkFtRwVgVp
                        :type :expr
                        :at 1584880531270
                        :by |B1y7Rc-Zz
                        :id |zRWFjSytJ
                    :type :expr
                    :at 1584880530097
                    :by |B1y7Rc-Zz
                    :id |1Yuq22AQ1
                :type :expr
                :at 1500541010211
                :by nil
                :id |HkRKmc8leABb
            :type :expr
            :at 1500541010211
            :by nil
            :id |HyttQ9UlgCSW
          |mount-target $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJAa7qIllRrW)
              |j $ {} (:text |mount-target) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BykCX9IlxCrZ)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |.querySelector) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJbRmqLgeCHW)
                  |j $ {} (:text |js/document) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Byz0Q58leRrb)
                  |r $ {} (:text "|\".app") (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkmCm9LggCrW)
                :type :expr
                :at 1500541010211
                :by nil
                :id |rJl0mcUxeRS-
            :type :expr
            :at 1500541010211
            :by nil
            :id |BkpTXqIleASW
          |connect! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1512319373663) (:by |B1y7Rc-Zz) (:id |HkbI9FiZ-M)
              |j $ {} (:text |connect!) (:type :leaf) (:at 1512319373663) (:by |B1y7Rc-Zz) (:id |SJzLqFobWM)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1512319373663
                :by |B1y7Rc-Zz
                :id |Bkm8qFiWbM
              |x $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1553788379239) (:by |B1y7Rc-Zz) (:id |hmOky3qiF)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |url-obj) (:type :leaf) (:at 1553788383202) (:by |B1y7Rc-Zz) (:id |8oKaYmo1yt)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |url-parse) (:type :leaf) (:at 1621415162157) (:by |B1y7Rc-Zz) (:id |MPpa24u2m)
                              |j $ {} (:text |js/location.href) (:type :leaf) (:at 1553788399043) (:by |B1y7Rc-Zz) (:id |lMf--2O6RW)
                              |r $ {} (:text |true) (:type :leaf) (:at 1553788401386) (:by |B1y7Rc-Zz) (:id |b6RNEdpAJ)
                            :type :expr
                            :at 1553788393763
                            :by |B1y7Rc-Zz
                            :id |nA4tBLwG2r
                        :type :expr
                        :at 1553788379640
                        :by |B1y7Rc-Zz
                        :id |70MB6Qnji
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |host) (:type :leaf) (:at 1553788408901) (:by |B1y7Rc-Zz) (:id |zjbMA8doZleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1621415492748) (:by |B1y7Rc-Zz) (:id |I1fIwQTYyA)
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1614525578400) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |url-obj) (:type :leaf) (:at 1614525580370) (:by |B1y7Rc-Zz)
                                  |r $ {} (:text |.-query) (:type :leaf) (:at 1614525583894) (:by |B1y7Rc-Zz)
                                  |v $ {} (:text |.-host) (:type :leaf) (:at 1614525585769) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614525568953
                                :by |B1y7Rc-Zz
                              |r $ {} (:text |js/location.hostname) (:type :leaf) (:at 1553788646585) (:by |B1y7Rc-Zz) (:id |xL35-2zEOx)
                            :type :expr
                            :at 1553788409541
                            :by |B1y7Rc-Zz
                            :id |nLEaisdID
                        :type :expr
                        :at 1553788405426
                        :by |B1y7Rc-Zz
                        :id |zjbMA8doZ
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |port) (:type :leaf) (:at 1553788437435) (:by |B1y7Rc-Zz) (:id |i3kGQIbWXXleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |either) (:type :leaf) (:at 1621415494658) (:by |B1y7Rc-Zz) (:id |QxeSl8UNBq)
                              |n $ {}
                                :data $ {}
                                  |T $ {} (:text |->) (:type :leaf) (:at 1614525592154) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |url-obj) (:type :leaf) (:at 1614525594677) (:by |B1y7Rc-Zz)
                                  |r $ {} (:text |.-query) (:type :leaf) (:at 1614525597119) (:by |B1y7Rc-Zz)
                                  |v $ {} (:text |.-port) (:type :leaf) (:at 1614525598970) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1614525591023
                                :by |B1y7Rc-Zz
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:port) (:type :leaf) (:at 1553788445264) (:by |B1y7Rc-Zz) (:id |L9ohXpg6FI)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1553788448092) (:by |B1y7Rc-Zz) (:id |X36MhI7H9X)
                                :type :expr
                                :at 1553788442474
                                :by |B1y7Rc-Zz
                                :id |ojqMcDkPek
                            :type :expr
                            :at 1553788439662
                            :by |B1y7Rc-Zz
                            :id |C_mmkFsewu
                        :type :expr
                        :at 1553788436209
                        :by |B1y7Rc-Zz
                        :id |i3kGQIbWXX
                    :type :expr
                    :at 1553788379472
                    :by |B1y7Rc-Zz
                    :id |WsLui0CtcD
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |ws-connect!) (:type :leaf) (:at 1544638840280) (:by |B1y7Rc-Zz) (:id |jBIa7mbk8Xleaf)
                      |f $ {}
                        :data $ {}
                          |D $ {} (:text |str) (:type :leaf) (:at 1614525533043) (:by |B1y7Rc-Zz) (:id |nUrfsURDOF)
                          |T $ {} (:text "|\"ws://") (:type :leaf) (:at 1614525545188) (:by |B1y7Rc-Zz) (:id |7QemhVvi7)
                          |X $ {} (:text |host) (:type :leaf) (:at 1614525546789) (:by |B1y7Rc-Zz)
                          |b $ {} (:text "|\":") (:type :leaf) (:at 1614525548655) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |port) (:type :leaf) (:at 1614525534845) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1553788636995
                        :by |B1y7Rc-Zz
                        :id |qDtC57O6l3
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1544638847731) (:by |B1y7Rc-Zz) (:id |IN7LxYjowleaf)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:on-open) (:type :leaf) (:at 1544810950316) (:by |B1y7Rc-Zz) (:id |1Q0yp5aGv7)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1544638853098) (:by |B1y7Rc-Zz) (:id |CGJyD9XG_J)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |event) (:type :leaf) (:at 1614610706253) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1544638853478
                                    :by |B1y7Rc-Zz
                                    :id |Mv7KulDtul
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |simulate-login!) (:type :leaf) (:at 1544638857743) (:by |B1y7Rc-Zz) (:id |I_i0Z-bDOA)
                                    :type :expr
                                    :at 1544638857743
                                    :by |B1y7Rc-Zz
                                    :id |sTMad0uNye
                                :type :expr
                                :at 1544638852318
                                :by |B1y7Rc-Zz
                                :id |OMiut2The6
                            :type :expr
                            :at 1544638848381
                            :by |B1y7Rc-Zz
                            :id |FXMYhraBtA
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:on-close) (:type :leaf) (:at 1544810951523) (:by |B1y7Rc-Zz) (:id |z_HwhccMEleaf)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |fn) (:type :leaf) (:at 1544638867713) (:by |B1y7Rc-Zz) (:id |d-QdoRjxcg)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |event) (:type :leaf) (:at 1544638868717) (:by |B1y7Rc-Zz) (:id |fv4UqWZRoi)
                                    :type :expr
                                    :at 1544638868024
                                    :by |B1y7Rc-Zz
                                    :id |Ao4yXrThPP
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |reset!) (:type :leaf) (:at 1544638871456) (:by |B1y7Rc-Zz) (:id |0O9JkOoVSS)
                                      |j $ {} (:text |*store) (:type :leaf) (:at 1544638871456) (:by |B1y7Rc-Zz) (:id |wFAJzB0btZ)
                                      |r $ {} (:text |nil) (:type :leaf) (:at 1544638871456) (:by |B1y7Rc-Zz) (:id |Yc5UMKG8j_)
                                    :type :expr
                                    :at 1544638871456
                                    :by |B1y7Rc-Zz
                                    :id |__cuTwHCrq
                                  |v $ {}
                                    :data $ {}
                                      |j $ {} (:text |js/console.error) (:type :leaf) (:at 1544811061561) (:by |B1y7Rc-Zz) (:id |XJgsFJnhhF)
                                      |r $ {} (:text "|\"Lost connection!") (:type :leaf) (:at 1544811080765) (:by |B1y7Rc-Zz) (:id |YRVBqrTpE6)
                                    :type :expr
                                    :at 1544638875269
                                    :by |B1y7Rc-Zz
                                    :id |VhYa8vlArx
                                :type :expr
                                :at 1544638867412
                                :by |B1y7Rc-Zz
                                :id |4HVIb-_8Oz
                            :type :expr
                            :at 1544638859520
                            :by |B1y7Rc-Zz
                            :id |z_HwhccME
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:on-data) (:type :leaf) (:at 1544810952720) (:by |B1y7Rc-Zz) (:id |eSaoTyqIBleaf)
                              |j $ {} (:text |on-server-data) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                            :type :expr
                            :at 1544638877701
                            :by |B1y7Rc-Zz
                            :id |eSaoTyqIB
                        :type :expr
                        :at 1544638846433
                        :by |B1y7Rc-Zz
                        :id |IN7LxYjow
                    :type :expr
                    :at 1544638774501
                    :by |B1y7Rc-Zz
                    :id |jBIa7mbk8X
                :type :expr
                :at 1553788378469
                :by |B1y7Rc-Zz
                :id |-hctg1N-lY
            :text |url-parse/
            :type :expr
            :at 1614525521984
            :by |B1y7Rc-Zz
            :id |SklUcYsZWG
          |main! $ {}
            :data $ {}
              |xD $ {}
                :data $ {}
                  |T $ {} (:text |connect!) (:type :leaf) (:at 1512319373162) (:by |B1y7Rc-Zz) (:id |HkeQ9KjZ-f)
                :type :expr
                :at 1512319371768
                :by |B1y7Rc-Zz
                :id |ryN9FobbM
              |yT $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJQ_79Uel0HW)
                  |j $ {} (:text |*store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyE_79IgeCHZ)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkBOQ58eeArZ)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1614525742643) (:by |B1y7Rc-Zz)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |store) (:type :leaf) (:at 1614525744144) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1614525745228) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1614525743283
                        :by |B1y7Rc-Zz
                      |T $ {}
                        :data $ {}
                          |r $ {} (:text |render-app!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |By5um58gg0BW)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |rJ8uXcLlxABW
                    :type :expr
                    :at 1614525741412
                    :by |B1y7Rc-Zz
                :type :expr
                :at 1500541010211
                :by nil
                :id |S1GOX5UxlCBb
              |yj $ {}
                :data $ {}
                  |T $ {} (:text |add-watch) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkadXcIxe0HW)
                  |j $ {} (:text |*states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |S1CuX5UglRr-)
                  |r $ {} (:text |:changes) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bk1YXqIxe0HZ)
                  |v $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1614525749418) (:by |B1y7Rc-Zz)
                      |L $ {}
                        :data $ {}
                          |T $ {} (:text |states) (:type :leaf) (:at 1614525751470) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |prev) (:type :leaf) (:at 1614525753991) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1614525749681
                        :by |B1y7Rc-Zz
                      |T $ {}
                        :data $ {}
                          |r $ {} (:text |render-app!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkVtQ9LggCBW)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |rkeK75Ule0SZ
                    :type :expr
                    :at 1614525748860
                    :by |B1y7Rc-Zz
                :type :expr
                :at 1500541010211
                :by nil
                :id |S12_Q98lxRS-
              |yp $ {}
                :data $ {}
                  |T $ {} (:text |on-page-touch) (:type :leaf) (:at 1545239515366) (:by |B1y7Rc-Zz) (:id |xsXQphbiLleaf)
                  |j $ {}
                    :data $ {}
                      |D $ {} (:text |fn) (:type :leaf) (:at 1614525758804) (:by |B1y7Rc-Zz)
                      |L $ {}
                        :data $ {}
                        :type :expr
                        :at 1614525759063
                        :by |B1y7Rc-Zz
                      |T $ {}
                        :data $ {}
                          |j $ {} (:text |if) (:type :leaf) (:at 1545239386447) (:by |B1y7Rc-Zz) (:id |VLEK7Deo8y)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |nil?) (:type :leaf) (:at 1545239374628) (:by |B1y7Rc-Zz) (:id |-Is1GQONi9)
                              |j $ {} (:text |@*store) (:type :leaf) (:at 1545239374628) (:by |B1y7Rc-Zz) (:id |9pOm8A9oLv)
                            :type :expr
                            :at 1545239374628
                            :by |B1y7Rc-Zz
                            :id |UXyM65FXAg
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |connect!) (:type :leaf) (:at 1562176366189) (:by |B1y7Rc-Zz) (:id |ff1BEzXXGX)
                            :type :expr
                            :at 1545239374628
                            :by |B1y7Rc-Zz
                            :id |bL7TIWGWuL
                        :type :expr
                        :at 1545239354450
                        :by |B1y7Rc-Zz
                        :id |L4nfTN5HbZ
                    :type :expr
                    :at 1614525758247
                    :by |B1y7Rc-Zz
                :type :expr
                :at 1545239347653
                :by |B1y7Rc-Zz
                :id |xsXQphbiL
              |yr $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ryvF75UgxCHW)
                  |j $ {} (:text "|\"App started!") (:type :leaf) (:at 1562176360971) (:by |B1y7Rc-Zz) (:id |BJuKm5IglCSb)
                :type :expr
                :at 1500541010211
                :by nil
                :id |rJ8FQc8xx0S-
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1krmcIglAHb)
              |j $ {} (:text |main!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1gSXcLlgAHZ)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1500541010211
                :by nil
                :id |r1ZBm58llAS-
              |t $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1544874519276) (:by |B1y7Rc-Zz) (:id |ICEtj5Fxmgleaf)
                  |j $ {} (:text "|\"Running mode:") (:type :leaf) (:at 1544874524299) (:by |B1y7Rc-Zz) (:id |ckXl0VHmU)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1544874525354) (:by |B1y7Rc-Zz) (:id |hoH8abMFL)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1544874529605) (:by |B1y7Rc-Zz) (:id |VT1AFOCPy3)
                      |r $ {} (:text "|\"dev") (:type :leaf) (:at 1544874539526) (:by |B1y7Rc-Zz) (:id |tJW-De5LCf)
                      |v $ {} (:text "|\"release") (:type :leaf) (:at 1544874537560) (:by |B1y7Rc-Zz) (:id |1o5SA2gNC)
                    :type :expr
                    :at 1544874525129
                    :by |B1y7Rc-Zz
                    :id |6gcIZj22Hd
                :type :expr
                :at 1544874518376
                :by |B1y7Rc-Zz
                :id |ICEtj5Fxmg
              |x $ {}
                :data $ {}
                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B1tBm9LgeCBZ)
                :type :expr
                :at 1500541010211
                :by nil
                :id |HJdBX9IglRHW
            :type :expr
            :at 1500541010211
            :by nil
            :id |BJCEXcIglASW
          |*store $ {}
            :data $ {}
              |T $ {} (:text |defatom) (:type :leaf) (:at 1614525705973) (:by |B1y7Rc-Zz) (:id |HyFVQqIgxAH-)
              |j $ {} (:text |*store) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJ9NQcLgx0rW)
              |r $ {} (:text |nil) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ry6EXcUleRBb)
            :type :expr
            :at 1500541010211
            :by nil
            :id |H1dE79UxlCHZ
          |dispatch! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJwzX98xlCSb)
              |j $ {} (:text |dispatch!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HkdGQqIlxCrW)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |op) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Sy5Gm5IllCS-)
                  |j $ {} (:text |op-data) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJiMmqLxl0rW)
                :type :expr
                :at 1500541010211
                :by nil
                :id |BktMQc8xlRBb
              |v $ {}
                :data $ {}
                  |T $ {} (:text |when) (:type :leaf) (:at 1545107418516) (:by |root) (:id |51Rpmi_umT)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |and) (:type :leaf) (:at 1545107418516) (:by |root) (:id |YbSYRTsLbB)
                      |j $ {} (:text |config/dev?) (:type :leaf) (:at 1545107418516) (:by |root) (:id |MGIzDtiW3m)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |not=) (:type :leaf) (:at 1545107418516) (:by |root) (:id |QjIRMR4wIQ)
                          |j $ {} (:text |op) (:type :leaf) (:at 1545107418516) (:by |root) (:id |A-yHxy0PyA)
                          |r $ {} (:text |:states) (:type :leaf) (:at 1545107418516) (:by |root) (:id |nf3zYpFhDx)
                        :type :expr
                        :at 1545107418516
                        :by |root
                        :id |sv-l-rjfZO
                    :type :expr
                    :at 1545107418516
                    :by |root
                    :id |CxRa9Blecm
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1545107418516) (:by |root) (:id |N5evPZK3ey)
                      |j $ {} (:text "|\"Dispatch") (:type :leaf) (:at 1545107418516) (:by |root) (:id |YCNzAjDdar)
                      |r $ {} (:text |op) (:type :leaf) (:at 1545107418516) (:by |root) (:id |4Mv7h8CBBT)
                      |v $ {} (:text |op-data) (:type :leaf) (:at 1545107418516) (:by |root) (:id |gefK1DUUBg)
                    :type :expr
                    :at 1545107418516
                    :by |root
                    :id |U-Yysz6Hq
                :type :expr
                :at 1545107418516
                :by |root
                :id |Gql69ugEAF
              |x $ {}
                :data $ {}
                  |D $ {} (:text |case-default) (:type :leaf) (:at 1624471500980) (:by |B1y7Rc-Zz) (:id |H1xV4qoZbG)
                  |L $ {} (:text |op) (:type :leaf) (:at 1512319536359) (:by |B1y7Rc-Zz) (:id |Hk_Eqo-bM)
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |ws-send!) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |{}) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |:kind) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                              |j $ {} (:text |:op) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                            :type :expr
                            :at 1624471498456
                            :by |B1y7Rc-Zz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |:op) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                              |j $ {} (:text |op) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                            :type :expr
                            :at 1624471498456
                            :by |B1y7Rc-Zz
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |:data) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                              |j $ {} (:text |op-data) (:type :leaf) (:at 1624471498456) (:by |B1y7Rc-Zz)
                            :type :expr
                            :at 1624471498456
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1624471498456
                        :by |B1y7Rc-Zz
                    :type :expr
                    :at 1624471498456
                    :by |B1y7Rc-Zz
                  |T $ {}
                    :data $ {}
                      |j $ {} (:text |:states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1oQQ5Ugx0BW)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |reset!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJaXX9LxgRBW)
                          |j $ {} (:text |*states) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hy0m7cUxlCrZ)
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |update-states) (:type :leaf) (:at 1584877147216) (:by |B1y7Rc-Zz) (:id |r1-E75IllABW)
                              |j $ {} (:text |@*states) (:type :leaf) (:at 1584874358841) (:by |B1y7Rc-Zz) (:id |68V6anWICP)
                              |r $ {} (:text |op-data) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyGV7cUxgAr-)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |H1y4Xc8xxArW
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |r1hX79UelArb
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |BkLQm9Uxe0BW
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:effect/connect) (:type :leaf) (:at 1512319553572) (:by |B1y7Rc-Zz) (:id |ByEH9sZ-Gleaf)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |connect!) (:type :leaf) (:at 1512319559727) (:by |B1y7Rc-Zz) (:id |B1jBci-WG)
                        :type :expr
                        :at 1512319556120
                        :by |B1y7Rc-Zz
                        :id |SJhScsbbf
                    :type :expr
                    :at 1512319547838
                    :by |B1y7Rc-Zz
                    :id |ByEH9sZ-G
                :type :expr
                :at 1512319531669
                :by |B1y7Rc-Zz
                :id |HyVVcoZ-z
            :type :expr
            :at 1500541010211
            :by nil
            :id |ryUMQcUxeRrZ
          |on-server-data $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1621415457126) (:by |B1y7Rc-Zz)
              |j $ {} (:text |on-server-data) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |data) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                :type :expr
                :at 1621415451663
                :by |B1y7Rc-Zz
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1621415463282) (:by |B1y7Rc-Zz)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |:kind) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                      |j $ {} (:text |data) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                    :type :expr
                    :at 1621415451663
                    :by |B1y7Rc-Zz
                  |n $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1621415464232) (:by |B1y7Rc-Zz)
                      |j $ {} (:text "|\"unknown server data kind:") (:type :leaf) (:at 1621415471638) (:by |B1y7Rc-Zz)
                      |r $ {} (:text |data) (:type :leaf) (:at 1621415464232) (:by |B1y7Rc-Zz)
                    :type :expr
                    :at 1621415464232
                    :by |B1y7Rc-Zz
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:patch) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |let) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                          |j $ {}
                            :data $ {}
                              |T $ {}
                                :data $ {}
                                  |T $ {} (:text |changes) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {} (:text |:data) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text |data) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1621415451663
                                    :by |B1y7Rc-Zz
                                :type :expr
                                :at 1621415451663
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1621415451663
                            :by |B1y7Rc-Zz
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |when) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                              |j $ {} (:text |config/dev?) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |js/console.log) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text "|\"Changes") (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |to-js-data) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                      |j $ {} (:text |changes) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                    :type :expr
                                    :at 1621415451663
                                    :by |B1y7Rc-Zz
                                :type :expr
                                :at 1621415451663
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1621415451663
                            :by |B1y7Rc-Zz
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |reset!) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                              |j $ {} (:text |*store) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |patch-twig) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |@*store) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                  |r $ {} (:text |changes) (:type :leaf) (:at 1621415451663) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1621415451663
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1621415451663
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1621415451663
                        :by |B1y7Rc-Zz
                    :type :expr
                    :at 1621415451663
                    :by |B1y7Rc-Zz
                :type :expr
                :at 1621415451663
                :by |B1y7Rc-Zz
            :type :expr
            :at 1621415451663
            :by |B1y7Rc-Zz
          |simulate-login! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bkb9QqLlgAHW)
              |j $ {} (:text |simulate-login!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJMqXcUelABW)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1500541010211
                :by nil
                :id |r17qQ9UgeRB-
              |v $ {}
                :data $ {}
                  |T $ {} (:text |let) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJB57c8xlRBZ)
                  |j $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |raw) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJ_qXc8egAr-)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |.!getItem) (:type :leaf) (:at 1624470044545) (:by |B1y7Rc-Zz) (:id |r19qXqLxgArb)
                              |j $ {} (:text |js/localStorage) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Hkic7c8gxRHZ)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |:storage-key) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkpqQ9IxeArZ)
                                  |j $ {} (:text |config/site) (:type :leaf) (:at 1527788758366) (:by |root) (:id |B1A9m98lxRH-)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |ry25mcLxgCSZ
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |ByKcQ5LelABb
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |SyD9Q98exCBZ
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |rkUcX9IglASZ
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |if) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJlj75UgeArW)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJMs7qUgeAHb)
                          |j $ {} (:text |raw) (:type :leaf) (:at 1500541010211) (:by |root) (:id |ByXsX5UleABb)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |rkbimcUxlCHW
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |do) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkroQcLexRSZ)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |println) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rywiQ5UxeRrW)
                              |j $ {} (:text "|\"Found storage.") (:type :leaf) (:at 1500541010211) (:by |root) (:id |r1OiX5UleCSZ)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |rJLjQ98lxCHZ
                          |r $ {}
                            :data $ {}
                              |T $ {} (:text |dispatch!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Bycjm5LllCHW)
                              |j $ {} (:text |:user/log-in) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJjj798exRB-)
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |parse-cirru-edn) (:type :leaf) (:at 1614525613534) (:by |B1y7Rc-Zz) (:id |SkaiQ58llRBZ)
                                  |j $ {} (:text |raw) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJAsX5Ill0BW)
                                :type :expr
                                :at 1500541010211
                                :by nil
                                :id |HJ3jXqIxeCrZ
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |HyYoX5IxeCHb
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |SyNiX9IggAS-
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |do) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HJghQqIllCrW)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |println) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyM279UlxCHZ)
                              |j $ {} (:text "|\"Found no storage.") (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkX2m9LexRBZ)
                            :type :expr
                            :at 1500541010211
                            :by nil
                            :id |r1bhmc8xx0BZ
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |S1kn798lgASZ
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |SJkiXq8llAHb
                :type :expr
                :at 1500541010211
                :by nil
                :id |SJV9X5Lgl0SZ
            :type :expr
            :at 1500541010211
            :by nil
            :id |r1eqQqIelRS-
          |reload! $ {}
            :data $ {}
              |D $ {} (:text |defn) (:type :leaf) (:at 1626338219194) (:by |B1y7Rc-Zz)
              |L $ {} (:text |reload!) (:type :leaf) (:at 1626338221203) (:by |B1y7Rc-Zz)
              |P $ {}
                :data $ {}
                :type :expr
                :at 1626338222598
                :by |B1y7Rc-Zz
              |T $ {}
                :data $ {}
                  |D $ {} (:text |if) (:type :leaf) (:at 1626338262693) (:by |B1y7Rc-Zz)
                  |L $ {}
                    :data $ {}
                      |T $ {} (:text |or) (:type :leaf) (:at 1626338263527) (:by |B1y7Rc-Zz)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1626338264872) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |client-errors) (:type :leaf) (:at 1626338267967) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1626338263742
                        :by |B1y7Rc-Zz
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |some?) (:type :leaf) (:at 1626338264872) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |server-errors) (:type :leaf) (:at 1626338271625) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1626338263742
                        :by |B1y7Rc-Zz
                    :type :expr
                    :at 1626338262938
                    :by |B1y7Rc-Zz
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |hud!) (:type :leaf) (:at 1626338274460) (:by |B1y7Rc-Zz)
                      |j $ {} (:text "|\"error") (:type :leaf) (:at 1626338280591) (:by |B1y7Rc-Zz)
                      |r $ {}
                        :data $ {}
                          |T $ {} (:text |str) (:type :leaf) (:at 1626338281935) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |client-errors) (:type :leaf) (:at 1626338290245) (:by |B1y7Rc-Zz)
                          |r $ {} (:text |&newline) (:type :leaf) (:at 1626338292718) (:by |B1y7Rc-Zz)
                          |v $ {} (:text |server-errors) (:type :leaf) (:at 1626338295776) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1626338281103
                        :by |B1y7Rc-Zz
                    :type :expr
                    :at 1626338273279
                    :by |B1y7Rc-Zz
                  |T $ {}
                    :data $ {}
                      |xT $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1615984434584) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |*store) (:type :leaf) (:at 1615984434584) (:by |B1y7Rc-Zz)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1615984434584) (:by |B1y7Rc-Zz)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1615984434584) (:by |B1y7Rc-Zz)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |store) (:type :leaf) (:at 1615984434584) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |prev) (:type :leaf) (:at 1615984434584) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1615984434584
                                :by |B1y7Rc-Zz
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1615984434584) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1615984434584
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1615984434584
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1615984434584
                        :by |B1y7Rc-Zz
                      |xj $ {}
                        :data $ {}
                          |T $ {} (:text |add-watch) (:type :leaf) (:at 1615984439986) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |*states) (:type :leaf) (:at 1615984439986) (:by |B1y7Rc-Zz)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1615984439986) (:by |B1y7Rc-Zz)
                          |v $ {}
                            :data $ {}
                              |T $ {} (:text |fn) (:type :leaf) (:at 1615984439986) (:by |B1y7Rc-Zz)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |states) (:type :leaf) (:at 1615984439986) (:by |B1y7Rc-Zz)
                                  |j $ {} (:text |prev) (:type :leaf) (:at 1615984439986) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1615984439986
                                :by |B1y7Rc-Zz
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |render-app!) (:type :leaf) (:at 1615984439986) (:by |B1y7Rc-Zz)
                                :type :expr
                                :at 1615984439986
                                :by |B1y7Rc-Zz
                            :type :expr
                            :at 1615984439986
                            :by |B1y7Rc-Zz
                        :type :expr
                        :at 1615984439986
                        :by |B1y7Rc-Zz
                      |T $ {} (:text |do) (:type :leaf) (:at 1626338226848) (:by |B1y7Rc-Zz) (:id |Skz6mqLllAB-)
                      |g $ {}
                        :data $ {}
                          |T $ {} (:text |hud!) (:type :leaf) (:at 1626338299354) (:by |B1y7Rc-Zz)
                          |j $ {} (:text "|\"inactive") (:type :leaf) (:at 1626338301802) (:by |B1y7Rc-Zz)
                          |r $ {} (:text |nil) (:type :leaf) (:at 1626338303049) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1626338298654
                        :by |B1y7Rc-Zz
                      |t $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1615984445816) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |*store) (:type :leaf) (:at 1615984447930) (:by |B1y7Rc-Zz)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1615984458906) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1615984442030
                        :by |B1y7Rc-Zz
                      |u $ {}
                        :data $ {}
                          |T $ {} (:text |remove-watch) (:type :leaf) (:at 1615984445816) (:by |B1y7Rc-Zz)
                          |j $ {} (:text |*states) (:type :leaf) (:at 1624470244924) (:by |B1y7Rc-Zz)
                          |r $ {} (:text |:changes) (:type :leaf) (:at 1615984455673) (:by |B1y7Rc-Zz)
                        :type :expr
                        :at 1615984442030
                        :by |B1y7Rc-Zz
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |clear-cache!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJLTm5LllRH-)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |BkHTX9LglArb
                      |x $ {}
                        :data $ {}
                          |T $ {} (:text |render-app!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Byua7qIle0Sb)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |BkPaX98gxAHW
                      |y $ {}
                        :data $ {}
                          |T $ {} (:text |println) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkipXq8geAB-)
                          |j $ {} (:text "|\"Code updated.") (:type :leaf) (:at 1624471413142) (:by |B1y7Rc-Zz) (:id |Hyh679IegASZ)
                        :type :expr
                        :at 1500541010211
                        :by nil
                        :id |Hyc6Q9Uel0Bb
                    :type :expr
                    :at 1500541010211
                    :by nil
                    :id |BybpmqIeeCr-
                :type :expr
                :at 1626338262273
                :by |B1y7Rc-Zz
            :type :expr
            :at 1626338217992
            :by |B1y7Rc-Zz
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1500541010211
          :by nil
          :id |S1dWm9UggRBZ
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1KCzq8geASW)
            |j $ {} (:text |app.client) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BycAGqLleAH-)
            |r $ {}
              :data $ {}
                |yyT $ {}
                  :data $ {}
                    |T $ {} (:text "|\"bottom-tip") (:type :leaf) (:at 1626338231975) (:by |B1y7Rc-Zz)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626338234077) (:by |B1y7Rc-Zz)
                    |r $ {} (:text |hud!) (:type :leaf) (:at 1626338235878) (:by |B1y7Rc-Zz)
                  :type :expr
                  :at 1626338229349
                  :by |B1y7Rc-Zz
                |yyj $ {}
                  :data $ {}
                    |T $ {} (:text "|\"./calcit.build-errors") (:type :leaf) (:at 1626338248112) (:by |B1y7Rc-Zz)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626338250205) (:by |B1y7Rc-Zz)
                    |r $ {} (:text |client-errors) (:type :leaf) (:at 1626338252649) (:by |B1y7Rc-Zz)
                  :type :expr
                  :at 1626338241765
                  :by |B1y7Rc-Zz
                |yyr $ {}
                  :data $ {}
                    |T $ {} (:text "|\"../js-out/calcit.build-errors") (:type :leaf) (:at 1626338257272) (:by |B1y7Rc-Zz)
                    |j $ {} (:text |:default) (:type :leaf) (:at 1626338250205) (:by |B1y7Rc-Zz)
                    |r $ {} (:text |server-errors) (:type :leaf) (:at 1626338258848) (:by |B1y7Rc-Zz)
                  :type :expr
                  :at 1626338241765
                  :by |B1y7Rc-Zz
                |yT $ {}
                  :data $ {}
                    |j $ {} (:text |app.schema) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyrZm9IegRSZ)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJ8b75LgeCS-)
                    |v $ {} (:text |schema) (:type :leaf) (:at 1500541010211) (:by |root) (:id |Byw-mqIgl0HZ)
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |HJXbm58xeRrW
                |yj $ {}
                  :data $ {}
                    |j $ {} (:text |app.config) (:type :leaf) (:at 1527788764341) (:by |root) (:id |SJZzyHh6J7)
                    |r $ {} (:text |:as) (:type :leaf) (:at 1527788766627) (:by |root) (:id |HJI4JHhakX)
                    |v $ {} (:text |config) (:type :leaf) (:at 1527788767318) (:by |root) (:id |BJ-DJH3a17)
                  :type :expr
                  :at 1527788760671
                  :by |root
                  :id |rJWJr3TyQ
                |yr $ {}
                  :data $ {}
                    |j $ {} (:text |ws-edn.client) (:type :leaf) (:at 1544638780714) (:by |B1y7Rc-Zz) (:id |zEN00LwW1E)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544638782705) (:by |B1y7Rc-Zz) (:id |m3-1FVuogh)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |ws-connect!) (:type :leaf) (:at 1544638785998) (:by |B1y7Rc-Zz) (:id |JiK-h2n4iN)
                        |r $ {} (:text |ws-send!) (:type :leaf) (:at 1544638787583) (:by |B1y7Rc-Zz) (:id |h15_zxZNZf)
                      :type :expr
                      :at 1544638782913
                      :by |B1y7Rc-Zz
                      :id |wG2B6CmLNG
                  :type :expr
                  :at 1544638775980
                  :by |B1y7Rc-Zz
                  :id |lMCAY6KwD
                |yv $ {}
                  :data $ {}
                    |j $ {} (:text |recollect.patch) (:type :leaf) (:at 1544639048479) (:by |B1y7Rc-Zz) (:id |KvS5_SXv0S)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1544639049759) (:by |B1y7Rc-Zz) (:id |8FxYaO5JP)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |patch-twig) (:type :leaf) (:at 1544639057259) (:by |B1y7Rc-Zz) (:id |y2z8vLZvwg)
                      :type :expr
                      :at 1544639049952
                      :by |B1y7Rc-Zz
                      :id |07xWSkTUjV
                  :type :expr
                  :at 1544639047460
                  :by |B1y7Rc-Zz
                  :id |rkLsBPMduC
                |yx $ {}
                  :data $ {}
                    |j $ {} (:text |cumulo-util.core) (:type :leaf) (:at 1545239402091) (:by |B1y7Rc-Zz) (:id |pVpV5eueG)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1545239402776) (:by |B1y7Rc-Zz) (:id |KGMk6pkEm_)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |on-page-touch) (:type :leaf) (:at 1545239519506) (:by |B1y7Rc-Zz) (:id |9b8ZYaPnbu)
                      :type :expr
                      :at 1545239402983
                      :by |B1y7Rc-Zz
                      :id |39TJMdIhRL
                  :type :expr
                  :at 1545239397101
                  :by |B1y7Rc-Zz
                  :id |9yRRVSPy_o
                |yy $ {}
                  :data $ {}
                    |j $ {} (:text "|\"url-parse") (:type :leaf) (:at 1553788387912) (:by |B1y7Rc-Zz) (:id |PjY-5vhezr)
                    |r $ {} (:text |:default) (:type :leaf) (:at 1621415158100) (:by |B1y7Rc-Zz) (:id |xuQXGFRA-i)
                    |v $ {} (:text |url-parse) (:type :leaf) (:at 1553788391454) (:by |B1y7Rc-Zz) (:id |BlhK80C3x7)
                  :type :expr
                  :at 1553788385335
                  :by |B1y7Rc-Zz
                  :id |Ol6pRFB9Pq
                |T $ {} (:text |:require) (:type :leaf) (:at 1500541010211) (:by |root) (:id |B130M9IxgASW)
                |j $ {}
                  :data $ {}
                    |j $ {} (:text |respo.core) (:type :leaf) (:at 1500541010211) (:by |root) (:id |HyJ1m9Ueg0S-)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SylJXqLgxRrW)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |render!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BkmJX5LelABb)
                        |r $ {} (:text |clear-cache!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SkEkQ9IgxArW)
                        |v $ {} (:text |realize-ssr!) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SJBkX9Ugl0S-)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |Hkb17q8lg0H-
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |rypCzcUgeAHW
                |r $ {}
                  :data $ {}
                    |j $ {} (:text |respo.cursor) (:type :leaf) (:at 1500541010211) (:by |root) (:id |H1Ok75IxgRSW)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |SyFyQqIxlCrW)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |update-states) (:type :leaf) (:at 1584874339542) (:by |B1y7Rc-Zz) (:id |S1ny7cUlx0Bb)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |SJ9J798ggAHZ
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |ryIJ7cIglCrZ
                |v $ {}
                  :data $ {}
                    |j $ {} (:text |app.comp.container) (:type :leaf) (:at 1500541010211) (:by |root) (:id |BJJe75Igx0Sb)
                    |r $ {} (:text |:refer) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rklgX5UxxCHW)
                    |v $ {}
                      :data $ {}
                        |j $ {} (:text |comp-container) (:type :leaf) (:at 1500541010211) (:by |root) (:id |rJmxQqIelAS-)
                      :type :expr
                      :at 1500541010211
                      :by nil
                      :id |SyWx7qIex0BW
                  :type :expr
                  :at 1500541010211
                  :by nil
                  :id |r1pJXcIgx0SW
              :type :expr
              :at 1500541010211
              :by nil
              :id |BysRMcUleArZ
          :type :expr
          :at 1500541010211
          :by nil
          :id |S1uAGcLllRr-
      |app.config $ {}
        :defs $ {}
          |dev? $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1521911286581) (:by |root) (:id |SkZ2x8-45f)
              |j $ {} (:text |dev?) (:type :leaf) (:at 1521911283590) (:by |root) (:id |SJzhl8WEcf)
              |r $ {}
                :data $ {}
                  |D $ {} (:text |=) (:type :leaf) (:at 1624108446816) (:by |B1y7Rc-Zz)
                  |L $ {} (:text "|\"dev") (:type :leaf) (:at 1624108449235) (:by |B1y7Rc-Zz)
                  |T $ {}
                    :data $ {}
                      |D $ {} (:text |get-env) (:type :leaf) (:at 1624108441731) (:by |B1y7Rc-Zz) (:id |eafSHbh5i_)
                      |b $ {} (:text "|\"mode") (:type :leaf) (:at 1624108486467) (:by |B1y7Rc-Zz)
                    :type :expr
                    :at 1544871605820
                    :by |B1y7Rc-Zz
                    :id |IYm8Tcue-
                :type :expr
                :at 1624108446316
                :by |B1y7Rc-Zz
            :type :expr
            :at 1521911283590
            :by |root
            :id |rJe2eIb4qG
          |site $ {}
            :data $ {}
              |T $ {} (:text |def) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Syx9g8-l0B-)
              |j $ {} (:text |site) (:type :leaf) (:at 1500541255553) (:by |root) (:id |Hy-9x8beASZ)
              |r $ {}
                :data $ {}
                  |yr $ {}
                    :data $ {}
                      |T $ {} (:text |:theme) (:type :leaf) (:at 1535565552318) (:by |B1y7Rc-Zz) (:id |fLHGwxYEcwleaf)
                      |j $ {} (:text "|\"#eeeeff") (:type :leaf) (:at 1535565554474) (:by |B1y7Rc-Zz) (:id |iZkrTQHtV)
                    :type :expr
                    :at 1535565550489
                    :by |B1y7Rc-Zz
                    :id |fLHGwxYEcw
                  |yv $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-key) (:type :leaf) (:at 1544855275779) (:by |B1y7Rc-Zz) (:id |uZPBtv98eu)
                      |j $ {} (:text "|\"workflow-storage-calcit") (:type :leaf) (:at 1614525633163) (:by |B1y7Rc-Zz) (:id |ADQo0wpedu)
                    :type :expr
                    :at 1544855275779
                    :by |B1y7Rc-Zz
                    :id |p3x2NvQE8A
                  |yx $ {}
                    :data $ {}
                      |T $ {} (:text |:storage-file) (:type :leaf) (:at 1544855289453) (:by |B1y7Rc-Zz) (:id |FdTJPwf8BBleaf)
                      |j $ {} (:text "|\"storage.edn") (:type :leaf) (:at 1544855299725) (:by |B1y7Rc-Zz) (:id |LoPUWHpqD7)
                    :type :expr
                    :at 1544855286260
                    :by |B1y7Rc-Zz
                    :id |FdTJPwf8BB
                  |T $ {} (:text |{}) (:type :leaf) (:at 1500541255553) (:by |root) (:id |r1Q5x8Zl0Hb)
                  |r $ {}
                    :data $ {}
                      |T $ {} (:text |:port) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rydqx8blRHW)
                      |j $ {} (:text |5021) (:type :leaf) (:at 1500541255553) (:by |root) (:id |rJF9g8-gCHZ)
                    :type :expr
                    :at 1500541255553
                    :by nil
                    :id |H1w9gIblRHb
                  |t $ {}
                    :data $ {}
                      |T $ {} (:text |:title) (:type :leaf) (:at 1527867504737) (:by |root) (:id |BkeUud1ye7leaf)
                      |j $ {} (:text "|\"Cumulo") (:type :leaf) (:at 1527867511502) (:by |root) (:id |H1zKduykx7)
                    :type :expr
                    :at 1527867502467
                    :by |root
                    :id |BkeUud1ye7
                  |u $ {}
                    :data $ {}
                      |T $ {} (:text |:icon) (:type :leaf) (:at 1527867512819) (:by |root) (:id |r1gxKOykeQleaf)
                      |j $ {} (:text "|\"http://cdn.tiye.me/logo/cumulo.png") (:type :leaf) (:at 1527867517723) (:by |root) (:id |B1SY_yJx7)
                    :type :expr
                    :at 1527867511986
                    :by |root
                    :id |r1gxKOykeQ
                :type :expr
                :at 1500541255553
                :by nil
                :id |ByG9eLZlAB-
            :type :expr
            :at 1500541255553
            :by nil
            :id |ryy9lUWg0BW
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1527788708227
          :by |root
          :id |ByX2iV3p1m
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1527788708227) (:by |root) (:id |HJb3jEn6kX)
            |j $ {} (:text |app.config) (:type :leaf) (:at 1527788708227) (:by |root) (:id |BJfhoN3pym)
          :type :expr
          :at 1527788708227
          :by |root
          :id |HJghs43Tk7
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |B1y7Rc-Zz) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
    |root $ {} (:avatar nil) (:name |root) (:nickname |root) (:id |root) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
