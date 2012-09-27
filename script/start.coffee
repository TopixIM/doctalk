
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

  if ls.avatar?
    $('#set-avatar').val ls.avatar
    $('#set-avatar').trigger 'input'
    s.emit 'set-avatar', ls.avatar

  unless ls.name? and ls.avatar
    $('#setting').animate width: '400px'
    $('#toggle').text '>'

  # delay 800, focus_type