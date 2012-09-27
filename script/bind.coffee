
bind_events = ->
  $('#create').click (e) -> off
  $('body').click -> $('#create').fadeOut()
  $('#add').click -> $('#create').fadeIn().focus() and off

  $('#create').keydown (e) ->
    # show e.keyCode
    if e.keyCode is 13
      create_topic()
      e.preventDefault()
      off

  $('body').keydown (e) ->
    # show e.keyCode
    if e.keyCode is 9
      e.preventDefault()
      do slide_right
    else if e.keyCode is 33 # pgup
      scroll_view 'up'
    else if e.keyCode is 34 # pgdown
      scroll_view 'down'

  $('#type').bind 'input', ->
    do focus_type
    text = $('#type').val().trim()
    if text.length > 0
      s.emit 'sync-post', text

  $('#type').keydown (e) ->
    if e.keyCode is 13
      text = $('#type').val().trim()
      if text.length > 0
        s.emit 'add-post', text
      $('#type').val ''
  
  $('#set-name').bind 'input', set_name

  $('#set-avatar').bind 'input', set_avatar

  $('#toggle').click ->
    width = $('#setting').width()
    # show width
    if width > 40
      $('#setting').animate width: '40px'
      $('#toggle').text '<'
    else
      $('#setting').animate width: '400px'
      $('#toggle').text '>'

  $('#inside').bind 'scroll', ->
    top = $('#inside').scrollTop()
    if top is 0
      elem = $('#inside .unit:first-child')
      topic_id = elem.attr 'topic_id'
      s.emit 'more-topic', topic_id