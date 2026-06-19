import 'package:jaspr/jaspr.dart';

import 'pages/portfolio.dart';

/// Root server component — renders the [Portfolio] @client page.
/// The router has been removed; this is a single-page portfolio.
class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return const Portfolio();
  }
}
