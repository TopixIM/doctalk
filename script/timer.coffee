
nn = (n) -> if n < 10 then "0#{n}" else "#{n}"

time = ->
  now = new Date
  hou = nn now.getHours()
  min = nn now.getMinutes()
  sec = nn now.getSeconds()
  "#{hou}:#{min}:#{sec}"

$ ->
  repeat 200, -> $('#clock').text time()