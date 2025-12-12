typedef void EventCallback(arg);

enum Events { NAVIGATE, LOADINGERROR, SCROLLBOTTOM, GLOBALMESSAGES }

class EventBus {
  EventBus._internal();

  static final EventBus _singleton = EventBus._internal();

  factory EventBus() => _singleton;

  final _emap = <Object, List<EventCallback>?>{};

  void on(eventName, EventCallback f) {
    _emap[eventName] ??= <EventCallback>[];
    _emap[eventName]!.add(f);
  }

  void off(eventName, [EventCallback? f]) {
    var list = _emap[eventName];
    if (eventName == null || list == null) return;
    if (f == null) {
      _emap[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  void emit(eventName, [arg]) {
    var list = _emap[eventName];
    if (list == null) return;
    int len = list.length - 1;
    for (var i = len; i > -1; --i) {
      list[i](arg);
    }
  }
}

var eventBus = EventBus();
