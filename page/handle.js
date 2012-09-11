var delay, repeat, s, show;

s = io.connect('http://192.168.1.117:8000');

show = function(x) {
  return console.log(x);
};

repeat = function(t, f) {
  return setInterval(f, t);
};

delay = function(t, f) {
  return setTimeout(f, t);
};

s.on('ready', function() {
  return show('ready');
});

$(function() {});
