
mongo = require 'mongo-lite'

db = mongo.connect config.mongo_url, ['posts', 'topic']
posts = db.collection 'posts'
topic = db.collection 'topic'


exports.save_topic = (obj) ->
  topic.insert obj, (err, doc) ->
    throw err if err?

exports.show_topic = (s) ->
  topic.sort(topic_id: -1).limit(10).all (err, doc) ->
    throw err if err?
    s.emit 'show-topic', doc

exports.save_post = (obj) ->
  posts.insert obj, (err, doc) ->
    throw err if err?

exports.goto_topic = (s, topic_id) ->
  posts.sort(post_id: -1).limit(10).find(topic_id: topic_id)
    .all (err, doc) ->
      throw err if err?
      s.emit 'goto-topic', doc

exports.more_topic = (s, topic_id) ->
  # show 'more_topic'
  # show topic_id
  topic.find(topic_id: {$lt: topic_id})
    .sort(topic_id: -1).limit(10).all (err, doc) ->
      throw err if err?
      s.emit 'more-topic', doc

exports.more_posts = (s, post_id, topic_id) ->
  show topic_id, post_id
  posts.find(post_id: {$lt: post_id}, topic_id: topic_id)
    .sort(post_id: -1).limit(10).all (err, doc) ->
      throw err if err?
      s.emit 'more-posts', doc