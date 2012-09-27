
echo '------> start watching'
cd `dirname $0`

jade -O page/ -wP src/*.jade &
stylus -o page/ -w src/*.styl &
coffee -o page/ -wb script/*.coffee &
node-dev server.coffee &
doodle page/ server.coffee &

read

pkill -f 'jade'
pkill -f 'stylus'
pkill -f 'coffee'
pkill -f 'doodle'
pkill -f 'node-dev'

echo '------> stop watching'