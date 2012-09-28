
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
  show screen_width, left
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

show_topic = (list) ->
  if found list
    list.forEach prepend_topic
    end = last list
    # show 'end', end
    topic_id = end.topic_id
    s.emit 'goto-topic', topic_id
    highlight_joined topic_id
  else
    add_err text: 'all listed'

start_posts = (list) ->
  $('#show').empty()
  list.forEach prepend_post

sync_post = (obj) ->
  if obj.topic_id?
    post_id = obj.post_id
    query = ".unit span[post_id='#{post_id}']"
    # show query
    elem = $(query)
    # show elem
    if found elem
      elem.text obj.text
    else
      append_post obj
  else
    add_err text: 'topic_id not found..!'
    add_err text: 'add topic first and click to join!'

scroll_view = (direc) ->
  top = $('#show').scrollTop()
  h = $(window).height() - 100
  if direc is 'up'
    $('#show').animate scrollTop: (top - h), 100
  else if direc is 'down'
    $('#show').animate scrollTop: (top + h), 100

highlight_joined = (topic_id) ->
  # show topic_id
  query = "#inside .unit[topic_id='#{topic_id}']"
  $('.joined').removeClass 'joined'
  $(query).addClass 'joined'
  # show query, $(query)

more_posts = (list) ->
  if found list
    list.forEach prepend_post
  else
    add_err text: 'all posts listed'

set_padding = ->
  h = $(window).height()
  h1 = h * 0.3
  h2 = h * 0.7
  $('#show').css 'padding', "#{h1}px 0px #{h2}px"
  $('#inside').css 'padding', "#{h1}px 0px #{h2}px"