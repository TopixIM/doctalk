
create_topic = ->
  text = $('#create').val().trim()
  if text.length > 0
    s.emit 'create-topic', text
  $('#create').val ''
  $('#create').fadeOut()

focus_type = ->
  if $('body').scrollLeft() > 100
    $('body').animate scrollLeft: 0, ->
      $('#type').focus()
  else
    $('#type').focus()

slide_right = ->
  left = $('body').scrollLeft()
  screen_width = $(window).width()
  # show screen_width
  if left < 10
    $('body').animate scrollLeft: (2000 - screen_width)
  else
    do focus_type

set_name = ->
  name = $('#set-name').val()
  ls.name = name
  s.emit 'set-name', name

set_avatar = ->
  ls.avatar = $('#set-avatar').val()
  $('#avatar').attr 'src', ls.avatar
  s.emit 'set-avatar', ls.avatar

listen_topic = (obj) ->
  add_topic obj

start_topic = (list) ->
  list.forEach listen_topic
  end = last list
  show 'end', end
  s.emit 'goto-topic', end.topic_id

start_posts = (list) ->
  $('#show').empty()
  list.forEach add_post

sync_post = (obj) ->
  post_id = obj.post_id
  query = ".unit span[post_id='#{post_id}']"
  show query
  elem = $(query)
  show elem
  if found elem
    elem.text obj.text
  else
    add_post obj