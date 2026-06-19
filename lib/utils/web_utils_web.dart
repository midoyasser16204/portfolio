// Real browser implementations, compiled only on the JS/Wasm target.
import 'dart:js_interop';
import 'package:web/web.dart' as web;

double getScrollY() => web.window.scrollY;

double getElementOffsetTop(String id) {
  final el = web.document.getElementById(id);
  if (el == null) return double.maxFinite;
  if (el is web.HTMLElement) return el.offsetTop.toDouble();
  return double.maxFinite;
}

void addScrollListener(void Function() callback) {
  web.window.addEventListener(
    'scroll',
    ((web.Event _) => callback()).toJS,
  );
}

bool get isClient => true;
