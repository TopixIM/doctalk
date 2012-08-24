
echo 'should have installed:'
echo 'jade, stylus, coffee-script , doodle, node-dev'
echo "..."
echo "..."

jade -O page/ -w src/index.jade &
stylus -o page/ -w src/page.styl &
coffee -o page/ -wb src/handle.coffee &
coffee -o page/ -wb src/action.coffee &
doodle page/  server.coffee &
node-dev server.coffee &