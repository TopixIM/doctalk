
host = location.host
s = io.connect "http://#{host}:8000"
show =(x) -> console.log x
repeat = (t, f) -> setInterval f, t
delay = (t, f) -> setTimeout f, t

ls = localStorage

s.on 'ready', -> show 'ready'

post_tmpl = """
.unit
   img(src='#\{link\}').avatar
   span.text= text
"""
put = jade.compile post_tmpl

err_tmpl ="""
.error
  span.err-name :(
  span.err-info= text
"""
make_err = jade.compile err_tmpl

nn = (n) -> if n < 10 then "0#{n}" else "#{n}"

time = ->
  now = new Date
  h = nn now.getHours()
  m = nn now.getMinutes()
  s = nn now.getSeconds()
  "#{h}:#{m}:#{s}"

$ ->

  $('#set-name').bind 'input', ->
    name = $(@).val()

    ls.name = name
    s.emit 'set-name', name

  $('#set-avatar').bind 'input', ->
    link = $(@).val()
    $('#avatar').attr 'src', link
    $('#avatar').attr 'src'

    ls.avatar = link
    s.emit 'set-avatar', link

  $('#toggle').click ->
    width = $('#setting').width()
    show width
    if width > 40
      $('#setting').animate width: '40px'
    else
      $('#setting').animate width: '400px'

  focus_type = ->
    if $('body').scrollLeft() > 100
      $('body').animate scrollLeft: 0, ->
        $('#type').focus()
    else
      $('#type').focus()

  $('body').keydown (e) ->
    if e.keyCode is 9
      e.preventDefault()
      left = $('body').scrollLeft()
      screen_width = $(window).width()
      if left < 10
        $('body').animate scrollLeft: (2000 - screen_width)
      else
        do focus_type

  $('#create').click (e) -> off
  $('body').click -> $('#create').fadeOut()
  $('#add').click -> $('#create').fadeIn().focus() and off
  $('#create').keydown (e) ->
    if e.keyCode is 13
      s.emit 'create', $('#create').val()
      $('#create').val ''
      $('#create').fadeOut()
      # $('#type').focus()

  $('#type').bind 'input', ->
    do focus_type

  do init = ->
    if ls.name?
      $('#set-name').val ls.name
    if ls.avatar?
      $('#set-avatar').val ls.avatar
      $('#set-avatar').trigger 'input'
    show 'ok'
    delay 800, focus_type

  [1..40].forEach ->
    $('#show').append (put link: ls.avatar, text: 'ffine')
    $('#inside').append (put link: ls.avatar, text: 'ffine')

  repeat 200, -> $('#clock').text time()

  [1..10].forEach ->
    $('#msg').append (make_err text: 'fake without any reason to prove you are wrong')