
pkill -f 'jade -O page/ -w src/index.jade'
pkill -f 'stylus -o page/ -w src/page.styl'
pkill -f 'coffee -o page/ -wb src/handle.coffee'
pkill -f 'coffee -o page/ -wb src/action.coffee'
pkill -f 'doodle page/  server.coffee'
pkill -f 'node-dev server.coffee'