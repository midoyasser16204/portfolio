import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Fixed navigation bar. Receives [activeSection] from the parent Portfolio
/// state so the correct nav link is highlighted with the [nav-active] class.
class Nav extends StatelessComponent {
  final String activeSection;

  const Nav({super.key, required this.activeSection});

  static const _navItems = [
    ('Skills', 'skills'),
    ('Experience', 'experience'),
    ('Projects', 'projects'),
    ('Education', 'education'),
    ('Contact', 'contact'),
  ];

  @override
  Component build(BuildContext context) {
    return nav([
      div(classes: 'nav-logo', [
        .text('MY'),
        span([.text('.')]),
        .text('dev'),
      ]),
      ul(classes: 'nav-links', [
        for (final item in _navItems)
          li([
            a(
              href: '#${item.$2}',
              classes: activeSection == item.$2 ? 'nav-active' : null,
              [.text(item.$1)],
            ),
          ]),
      ]),
    ]);
  }
}
