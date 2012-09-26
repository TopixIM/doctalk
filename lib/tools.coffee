
global.delay = (t, f) -> setTimeout f, t
global.repeat = (t, f) -> setInterval f, t
global.show = console.log

global.maketime = -> new Date().getTime()
global.savetime = -> String (new Date().getTime())

nn = (n) -> if n < 10 then "0#{n}" else "#{n}"
global.timestamp = ->
  now = new Date
  m = nn now.getMonth()
  d = nn now.getDate()
  h = nn now.getHours()
  min = nn now.getMinutes()
  "#{m}/#{d} #{h}:#{min}"