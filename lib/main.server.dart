library;

import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
      base: 'portfolio',
      title: 'Mohamed Yasser Arafat — Mobile Developer',
      head: [
        meta(name: 'viewport', content: 'width=device-width, initial-scale=1.0'),
        meta(name: 'description', content:
          'Mohamed Yasser Arafat — Mobile Developer specialising in Android '
          '(Kotlin / Jetpack Compose) and Flutter with Clean Architecture, '
          'Firebase, and AI integrations. Based in Cairo, Egypt.'),
        link(rel: 'icon', href: 'favicon.ico'),
        link(rel: 'stylesheet', href: 'styles.css'),
        link(
          rel: 'preconnect',
          href: 'https://fonts.googleapis.com',
        ),
        link(
          rel: 'preconnect',
          href: 'https://fonts.gstatic.com',
          attributes: const {'crossorigin': ''},
        ),
      ],
      styles: [],
      body: App(),
    ),
  );
}
