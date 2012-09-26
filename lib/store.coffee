
mongo = require 'mongo-lite'

db = mongo.connect config.mongo_url, ['posts', 'topic']
posts = db.collection 'posts'
topic = db.collection 'topic'

exports.save_topic = (obj) ->
  topic.insert obj, (err, doc) ->
    throw err if err?

exports.start_topic = (s) ->
  topic.all {}, (err, doc) ->
    s.emit 'start-topic', doc

exports.save_post = (obj) ->
  posts.insert obj, (err, doc) ->
    throw err if err?

exports.goto_topic = (s, topic_id) ->
  posts.find(topic_id: topic_id).all (err, doc) ->
    throw err if err?
    s.emit 'goto-topic', doc