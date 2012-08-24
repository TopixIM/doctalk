var add_head, add_post, create, enter, init, new_page, page_next, page_prev, page_set, set_name, sync, sync_post, upsert, wave;

wave = function() {
  var body;
  body = $('body');
  if (body.scrollLeft() < 10) {
    return body.animate({
      scrollLeft: 900
    });
  } else {
    return body.animate({
      scrollLeft: 0
    });
  }
};

set_name = function(a_name) {
  ls.name = a_name;
  return $('input.name').val(a_name);
};

init = function(list) {
  var elem;
  list.forEach(add_head);
  elem = $('#head').children().last();
  page_set(elem);
  return elem.click();
};

page_set = function(elem) {
  var elem2, page;
  if (found($('.page'))) {
    elem2 = $('.page').removeClass('page');
    page = elem2.attr('page');
    $("#post .scope[page='" + page + "']").hide();
  }
  if (found(elem)) {
    show(elem);
    elem.addClass('page');
    page = elem.attr('page');
    $("#post .scope[page='" + page + "']").show();
    ls.page = elem.attr('page');
  } else {
    ls.page = stamp();
  }
  return enter();
};

page_next = function() {
  var next, page;
  page = $('.page');
  if (found(page)) {
    next = page.next();
    if (found(next)) {
      return page_set(next);
    } else {
      page_set([]);
      return ls.page = stamp();
    }
  } else {
    return page_set($('#head').children().first());
  }
};

page_prev = function() {
  var page, prev;
  page = $('.page');
  if (found(page)) {
    prev = page.prev();
    if (found(prev)) {
      return page_set(prev);
    } else {
      return s.emit('prev');
    }
  } else {
    return page_set($('#head').children().last());
  }
};

add_post = function(scope, data) {
  return scope.append(unit(data));
};

add_head = function(data) {
  var elem;
  elem = $('#head').append(unit(data));
  elem.click(function() {
    s.emit('page', data.page);
    page_set(elem);
    return ls.page = data.page;
  });
  show(data.page, ls.page);
  if (data.page === ls.page) return page_set(elem);
};

new_page = function(list) {
  $('#post').empty();
  return list.forEach(add_post);
};

sync = function(text) {
  var data;
  data = fill(text);
  return s.emit('sync', data);
};

upsert = function(data) {
  var aim, scope;
  scope = $("#post .scope[page='" + data.page + "']");
  if (found(scope)) {
    aim = $(".post[mark='" + data.mark + "']");
    if (found(aim)) {
      return sync_post(data);
    } else {
      return add_post(scope, data);
    }
  } else {
    return scope = create(data);
  }
};

create = function(data) {
  var elem, elem2, elem3;
  elem = "<div class='scope' page='" + data.page + "'>";
  $('#post').append(elem);
  elem2 = $(".scope[page='" + data.page + "']");
  elem2.append(unit(data));
  $('#head').append(unit(data));
  elem3 = $('#head').children().last();
  if (data.page === ls.page) {
    return elem3.addClass('page');
  } else {
    return elem2.hide();
  }
};

sync_post = function(data) {
  var elem;
  elem = $(".post[mark='" + data.mark + "']");
  return elem.find('.text').text(data.text);
};

enter = function() {
  ls.mark = stamp();
  return $('input.text').val('');
};
