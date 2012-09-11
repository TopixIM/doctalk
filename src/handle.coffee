
s = io.connect 'http://192.168.1.117:8000'
show =(x) -> console.log x
repeat = (t, f) -> setInterval f, t
delay = (t, f) -> setTimeout f, t


s.on 'ready', -> show 'ready'
$ ->
