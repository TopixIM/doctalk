var delay, fill, found, hostname, ls, repeat, s, show, stamp, unit, uptime,
  __slice = Array.prototype.slice;

unit = function(data) {
  return "<div class=\"post\" page=\"" + data.page + "\" mark=\"" + data.mark + "\">\n  <div class=\"time\">" + data.time + "</div>\n  <div class=\"name\">" + data.name + "</div>\n  <div class=\"text\">" + data.text + "</div>\n</div>";
};

show = function() {
  var args;
  args = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
  return console.log.apply(console, args);
};

stamp = function() {
  return new Date().getTime().toString();
};

ls = localStorage;

ls.page = stamp();

ls.mark = stamp();

fill = function(text) {
  var ret;
  return ret = {
    name: ls.name,
    time: uptime(),
    page: ls.page,
    text: text,
    mark: ls.mark
  };
};

repeat = function(t, f) {
  return setInterval(f, t);
};

delay = function(t, f) {
  return setTimeout(f, t);
};

found = function(x) {
  return x.length > 0;
};

hostname = location.hostname;

s = io.connect("http://" + hostname + ":8080");

uptime = function() {
  var day, hou, min, mon, now;
  now = new Date();
  mon = now.getMonth() + 1;
  day = now.getDate();
  hou = now.getHours();
  min = now.getMinutes();
  return "" + mon + "-" + day + " " + hou + ":" + min;
};

$(function() {
  var body, head, name, post, text, time;
  post = $('#post');
  head = $('#head');
  body = $('body');
  time = $('#time');
  name = $('input.name');
  text = $('input.text');
  repeat(1000, function() {
    return time.text(uptime());
  });
  $(window).keydown(function(e) {
    if (e.keyCode === 9) {
      return wave() && false;
    } else if (e.keyCode === 33) {
      return page_prev();
    } else if (e.keyCode === 34) {
      return page_next();
    }
  });
  text.keydown(function(e) {
    if (e.keyCode === 13) return (enter()) && false;
  });
  if (ls.name != null) set_name(ls.name);
  name.bind('input', function() {
    return set_name(name.val());
  });
  text.bind('input', function() {
    return sync(text.val());
  });
  s.on('init', init);
  s.on('post', new_page);
  s.on('sync', upsert);
  return text.focus();
});
