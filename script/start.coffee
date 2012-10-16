
notify =
  posts: 0
  topic: 0

inpage = yes
$(window).focus ->
  inpage = yes
  $('title').text 'talkpage'
  notify.posts = 0
  notify.topic = 0
  show 'focus'
$(window).blur ->
  show 'blur'
  inpage = no

draw_title = ->
  $('title').text "#{notify.posts} / #{notify.topic}"

$ ->

  do bind_events

  if ls.name?
    $('#set-name').val ls.name
    s.emit 'set-name', ls.name
  else
    s.emit 'set-name', '$null'

  if ls.avatar? and ls.avatar.length > 0
    $('#set-avatar').val ls.avatar
    $('#set-avatar').trigger 'input'
    s.emit 'set-avatar', ls.avatar
  else
    s.emit 'set-avatar', 'http://tp2.sinaimg.cn/1766492277/50/0/1'

  unless ls.name? and ls.avatar
    $('#setting').animate width: '400px'
    $('#toggle').attr 'src', '../pics/arrow-right.png'

  delay 800, focus_type

  do set_padding