
### About installation:

The commands(when you have configured nginx and mongodb):

  git clone git@github.com:jiyinyiyong/talkpage.git
  cd talkpage
  npm install
  sudo npm install -g forever
  forever start -c coffee server.coffee
  forever stop server.coffee

Details about mongodb was written in `./lib/config.coffee`.
Check thr port in `./page/socket.js` for `socket.io`.
Pages should be served with Nginx or another server.

### How to chat:
  Open on Chrome(only this browser runs well...),
  press `<tab>` to switch between topic and posts,
  press `<pgup> <pgdown>` to go up and down,
  click `toggle` then type in your nickname,
  add a link for your avatar.
  If error, it will disappear on the left.

  This app is still for demostration.
  I plan to put it on my VPS. Visit this link:
  http://chat.jiyinyiyong.info

### My Idea:
  Chatting should realtime.