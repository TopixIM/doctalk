
fs = require 'fs'

file = 'lib/data.json'

exports.read = ->
  try
    data = JSON.parse (fs.readFileSync file, 'utf8')
  catch err
    data = {}
  data

exports.write = (data) ->
  # console.log 'write:', data
  str =
    if typeof data is 'object' then JSON.stringify data
    else '{}'
  fs.writeFile file, str, 'utf8'