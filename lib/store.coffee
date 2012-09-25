
mongodb = require 'mongodb'
config = require('config').config
down = (info) -> throw new Error info

mongodb.connect config.config, (err, db) ->
  if err? then down 'failed to connect data'

  