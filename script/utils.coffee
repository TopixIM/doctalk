
show = (x...) -> console.log.apply console, x
repeat = (t, f) -> setInterval f, t
delay = (t, f) -> setTimeout f, t

last = (list) ->
  length = list.length
  list[length - 1]

found = (list) ->
  list.length > 0

ls = localStorage