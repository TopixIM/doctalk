
delay = (t, f) -> setTimeout f, t
repeat = (t, f) -> setInterval f, t
show = console.log

io = require('socket.io').listen 8080, origins: '*:*'
io.set 'log level', 1

io.sockets.on 'connection', (s) ->
  s.emit 'ready'