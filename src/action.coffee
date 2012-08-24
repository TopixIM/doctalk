
wave = ->
  body = $ 'body'
  if body.scrollLeft() < 10 then body.animate scrollLeft: 900
  else body.animate scrollLeft: 0

set_name = (a_name) ->
  ls.name = a_name
  $('input.name').val a_name

init = (list) ->
  list.forEach add_head
  elem = $('#head').children().last()
  page_set elem
  elem.click()

page_set = (elem) ->
  if found $('.page')
    elem2 = $('.page').removeClass('page')
    page = elem2.attr 'page'
    $("#post .scope[page='#{page}']").hide()
  if found elem
    show elem
    elem.addClass 'page'
    page = elem.attr 'page'
    $("#post .scope[page='#{page}']").show()
    ls.page = elem.attr 'page'
  else ls.page = stamp()
  do enter

page_next = ->
  page = $('.page')
  if found page
    next = page.next()
    if found next then page_set next
    else
      page_set []
      ls.page = stamp()
  else page_set $('#head').children().first()

page_prev = ->
  page = $('.page')
  if found page
    prev = page.prev()
    if found prev then page_set prev else s.emit 'prev'
  else
    page_set $('#head').children().last()

add_post = (scope, data) -> scope.append (unit data)

add_head = (data) ->
  elem = $('#head').append (unit data)
  elem.click ->
    s.emit 'page', data.page
    page_set elem
    ls.page = data.page
  show data.page, ls.page
  if data.page is ls.page then page_set elem

new_page = (list) ->
  $('#post').empty()
  list.forEach add_post

sync = (text) ->
  data = fill text
  s.emit 'sync', data

upsert = (data) ->
  # show data
  scope = $("#post .scope[page='#{data.page}']")
  if found scope
    aim = $(".post[mark='#{data.mark}']")
    if found aim then sync_post data
    else add_post scope, data
  else scope = create data

create = (data) ->
  elem = "<div class='scope' page='#{data.page}'>"
  $('#post').append elem
  elem2 = $(".scope[page='#{data.page}']")
  elem2.append (unit data)
  $('#head').append (unit data)
  elem3 = $('#head').children().last()
  if data.page is ls.page then elem3.addClass 'page'
  else elem2.hide()

sync_post = (data) ->
  elem = $ ".post[mark='#{data.mark}']"
  elem.find('.text').text data.text

enter = ->
  ls.mark = stamp()
  $('input.text').val ''