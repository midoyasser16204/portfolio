// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:portfolio/components/custom_cursor.dart' as _custom_cursor;
import 'package:portfolio/components/splash_screen.dart' as _splash_screen;
import 'package:portfolio/constants/theme.dart' as _theme;
import 'package:portfolio/pages/portfolio.dart' as _portfolio;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _custom_cursor.CustomCursor: ClientTarget<_custom_cursor.CustomCursor>(
      'custom_cursor',
    ),
    _splash_screen.SplashScreen: ClientTarget<_splash_screen.SplashScreen>(
      'splash_screen',
    ),
    _portfolio.Portfolio: ClientTarget<_portfolio.Portfolio>('portfolio'),
  },
  styles: () => [..._theme.styles],
);
