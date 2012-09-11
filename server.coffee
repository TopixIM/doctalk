
delay = (t, f) -> setTimeout f, t
repeat = (t, f) -> setInterval f, t
show = console.log

json_store = require('./lib/json-store.coffee')
data = json_store.read()
show 'read', typeof data
data.test = 1
show 'set', data
repeat 1000, -> json_store.write data

io = require('socket.io').listen 8000, origins: '*:*'
io.set 'log level', 1

io.sockets.on 'connection', (s) ->
  s.emit 'ready'
  data.test = []
  s.on 'add', (str) ->
    data.test.push str
    show data

  s.on 'rm', ->
    data.test.pop()
    show data