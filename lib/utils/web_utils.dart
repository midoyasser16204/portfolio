// Conditional export: stub on server/VM, real web implementation on JS target.
export 'web_utils_stub.dart' if (dart.library.js_interop) 'web_utils_web.dart';
