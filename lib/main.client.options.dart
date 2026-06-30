// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/client.dart';

import 'package:portfolio/components/custom_cursor.dart'
    deferred as _custom_cursor;
import 'package:portfolio/components/splash_screen.dart'
    deferred as _splash_screen;
import 'package:portfolio/pages/portfolio.dart' deferred as _portfolio;

/// Default [ClientOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.client.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultClientOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ClientOptions get defaultClientOptions => ClientOptions(
  clients: {
    'custom_cursor': ClientLoader(
      (p) => _custom_cursor.CustomCursor(),
      loader: _custom_cursor.loadLibrary,
    ),
    'splash_screen': ClientLoader(
      (p) => _splash_screen.SplashScreen(),
      loader: _splash_screen.loadLibrary,
    ),
    'portfolio': ClientLoader(
      (p) => _portfolio.Portfolio(),
      loader: _portfolio.loadLibrary,
    ),
  },
);
