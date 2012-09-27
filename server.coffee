
require('./lib/tools')
require('./lib/config')

db = require './lib/store'

io = require('socket.io').listen config.port, origins: '*:*'
io.set 'log level', 1

io.sockets.on 'connection', (s) ->
  s.emit 'ready'

  send_err = (text) ->s.emit 'err', text: text

  user =
    name: undefined
    avatar: undefined
    topic_id: undefined
    post_id: undefined
  lasttime = maketime()

  check = ->
    unless user.name?
      send_err 'no name'
      return
    unless user.avatar?
      send_err  'no avatar'
      return
    # show lasttime
    # show maketime()
    diff = maketime() - lasttime
    # show diff
    if diff < 1000
      send_err 'too frequent'
      return
    lasttime = maketime()
    yes

  s.on 'create-topic', (text) ->
    if check()
      obj =
        name: user.name
        time: timestamp()
        text: text
        avatar: user.avatar
        topic_id: savetime()
      db.save_topic obj
      io.sockets.emit 'create-topic', obj

  s.on 'set-name', (text) ->
    # show 'set-name'
    user.name = text

  s.on 'set-avatar', (link) ->
    # show 'set-avatar'
    user.avatar = link

  s.on 'goto-topic', (topic_id) ->
    s.leave user.topic_id
    s.join topic_id

    user.topic_id = topic_id
    db.goto_topic s, topic_id

    user.post_id = savetime()

  s.on 'add-post', (text) ->
    if check()
      if user.topic_id?
        obj =
          name: user.name
          time: timestamp()
          text: text
          avatar: user.avatar
          topic_id: user.topic_id
          post_id: savetime()
        db.save_post obj
        user.post_id = savetime()

  s.on 'sync-post', (text) ->
    # if check()
    obj =
      name: user.name
      time: timestamp()
      text: text
      avatar: user.avatar
      topic_id: user.topic_id
      post_id: user.post_id
    io.sockets.in(user.topic_id).emit 'sync-post', obj

  s.on 'more-topic', (topic_id) ->
    if check()
      db.more_topic s, topic_id

  s.on 'more-posts', (post_id) ->
    if check()
      show post_id
      db.more_posts s, post_id, user.topic_id

  db.show_topic s

###
test_send = ->
  io.sockets.emit 'err', text: 'xx'

repeat 600, test_send
###