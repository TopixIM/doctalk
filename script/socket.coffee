
host = location.host
s = io.connect "http://#{host}:8000"

s.on 'ready', -> show 'ready'
s.emit 'ready'

s.on 'err', add_err

s.on 'create-topic', listen_topic

s.on 'start-topic', start_topic

s.on 'goto-topic', start_posts

s.on 'add-post', add_post

s.on 'sync-post', sync_post