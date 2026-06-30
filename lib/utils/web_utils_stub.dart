// Stub implementations used on the server (Dart VM) during SSR pre-rendering.
// These are no-ops so the cubit/component code compiles on all targets.

double getScrollY() => 0.0;

double getElementOffsetTop(String id) => double.maxFinite;

void addScrollListener(void Function() callback) {}

void addMouseMoveListener(void Function(double x, double y) callback) {}

bool get isClient => false;

void scrollToTop() {}
