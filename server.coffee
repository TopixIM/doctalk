
delay = (t, f) -> setTimeout f, t
repeat = (t, f) -> setInterval f, t
show = console.log

io = require('socket.io').listen(8080)
io.set 'log level', 1

url = 'mongodb://talkpage:talkpage@localhost:27017/talkpage'
mongodb = require 'mongodb'
mongodb.connect url, (err, db) ->
  db.collection 'post', (err, post) ->
    db.collection 'head', (err, head) ->
      io.sockets.on 'connection', (s) ->
        handle s, post, head
        head.find().toArray (err, list) ->
          s.emit 'init', list

handle = (s, post, head) ->

  s.on 'page', (page) ->
    criteria = page: page
    option = limit: 20
    post.find(criteria, option).toArray (err, list) ->
      s.emit 'post', list

  s.on 'sync', (data) -> io.sockets.emit 'sync', data