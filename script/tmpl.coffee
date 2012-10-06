
tmpl = {}

tmpl.post = jade.compile """
  .unit
     img(src='\#{avatar}',title='\#{name}',alt='\#{name}').avatar
     .content
       span.text(post_id='\#{post_id}',title='\#{time}')= text
  """

tmpl.topic = jade.compile """
  .unit(topic_id='\#{topic_id}')
     img(src='\#{avatar}',title='\#{name}',alt='\#{name}').avatar
     .content
       span.text(title='\#{time}')= text
  """

tmpl.err = jade.compile """
  .error
    span.err-name :(
    span.err-info= text
  """

prepend_post = (obj) ->
  $('#show').prepend (tmpl.post obj)
  elem = $('#show  .unit:first-child')
  elem.hide().slideDown()

append_post = (obj) ->
  $('#show').append (tmpl.post obj)
  unless inpage
    notify.posts += 1
    do draw_title

prepend_topic = (obj) ->
  $('#inside').prepend (tmpl.topic obj)
  elem = $('#inside  .unit:first-child')
  elem.hide().slideDown()
  elem.click ->
    s.emit 'goto-topic', obj.topic_id
    highlight_joined obj.topic_id
    do focus_type

add_err = (obj) ->
  $('#msg').append (tmpl.err obj)
  elem = $('#msg .error:last-child')
  delay 4000, ->
    elem.slideUp -> elem.remove()
  do focus_type

append_topic = (obj) ->
  $('#inside').append (tmpl.topic obj)
  $('#inside  .unit:last-child').click ->
    s.emit 'goto-topic', obj.topic_id
    highlight_joined obj.topic_id
    do focus_type
  unless inpage
    notify.topic += 1
    do draw_title

###
test_add_err = ->
  delay 1200, ->
    add_err text: 'test'

test_add_topic = ->
  add_topic
    link: 'http://tp1.sinaimg.cn/1651843872/180/5619585096/1'
    title: 'name'
    topic_id: '23345345'
    text: 'xvcxv'

test_add_post = ->
  add_post
    link: 'http://tp1.sinaimg.cn/1651843872/180/5619585096/1'
    title: 'name'
    post_id: '23345345'
    text: 'xvcxv'

repeat 1000, test_add_post
repeat 1000, test_add_topic
repeat 1000, test_add_err
###