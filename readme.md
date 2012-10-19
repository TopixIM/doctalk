  
### About installation:  
  
The commands(after you configured mongodb):  
  
    git clone git@github.com:jiyinyiyong/talkpage.git  
    cd talkpage  
    npm install  
    sudo npm install -g forever  
    forever start -c coffee server.coffee  
    forever restart server.coffee  
    forever stop server.coffee  
  
Details about mongodb and port was written in `./lib/config.coffee`.  
Check the port in `./page/socket.js` for `socket.io` if you'd like to chage  
Static files should be served with Nginx or another web server.  
  
### How to chat:  
  
Open on Chrome(only this browser runs well...),  
press `<tab>` to switch between topic and posts,  
press `<pgup> <pgdown>` to go up and down,  
click `toggle` then type in your nickname,  
add a link for your avatar.  
If error, it will disappear on the left.  
This app is still for demostration.  
I plan to put it on my VPS. Visit this link: <http://s.jiyinyiyong.info/talkpage/page/>  
  
### My Idea:  
  
Chatting should realtime.  