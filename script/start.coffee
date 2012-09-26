
$ ->

  do bind_events

  if ls.name?
    $('#set-name').val ls.name
    s.emit 'set-name', ls.name

  if ls.avatar?
    $('#set-avatar').val ls.avatar
    $('#set-avatar').trigger 'input'
    s.emit 'set-avatar', ls.avatar

  # delay 800, focus_type