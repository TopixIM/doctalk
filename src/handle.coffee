
unit = (data) ->
  """
  <div class="post" page="#{data.page}" mark="#{data.mark}">
    <div class="time">#{data.time}</div>
    <div class="name">#{data.name}</div>
    <div class="text">#{data.text}</div>
  </div>
  """

show = (args...) -> console.log.apply console, args
stamp = -> new Date().getTime().toString()
ls = localStorage
ls.page = stamp()
ls.mark = stamp()

fill = (text) ->
  ret =
    name: ls.name
    time: uptime()
    page: ls.page
    text: text
    mark: ls.mark

repeat = (t, f) -> setInterval f, t
delay = (t, f) -> setTimeout f, t
found = (x) -> x.length > 0

hostname = location.hostname
s = io.connect "http://#{hostname}:8080"

uptime = ->
  now = new Date()
  mon = now.getMonth() + 1
  day = now.getDate()
  hou = now.getHours()
  min = now.getMinutes()
  "#{mon}-#{day} #{hou}:#{min}"

$ ->
  post = $ '#post'
  head = $ '#head'
  body = $ 'body' 
  time = $ '#time'
  name = $ 'input.name'
  text = $ 'input.text'

  repeat 1000, -> time.text uptime()

  $(window).keydown (e) ->
    if e.keyCode is 9 then return wave() and false
    else if e.keyCode is 33 then do page_prev
    else if e.keyCode is 34 then do page_next

  text.keydown (e) -> return if e.keyCode is 13 then (do enter) and false

  if ls.name? then set_name ls.name
  name.bind 'input', -> set_name name.val()
  text.bind 'input', -> sync text.val()

  s.on 'init', init
  s.on 'post', new_page
  s.on 'sync', upsert

  text.focus()