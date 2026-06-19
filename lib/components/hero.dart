import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Hero section. [typedText] is updated by TypedRoleCubit in the parent
/// Portfolio component and passed here so only the text node re-renders.
class HeroSection extends StatelessComponent {
  final String typedText;

  const HeroSection({super.key, required this.typedText});

  // Helper builders for the phone code display
  static Component _line(List<Component> parts) =>
      span(classes: 'code-line', parts);
  static Component _kw(String t) =>
      span(classes: 'code-keyword', [.text(t)]);
  static Component _fn(String t) =>
      span(classes: 'code-fn', [.text(t)]);
  static Component _str(String t) =>
      span(classes: 'code-str', [.text(t)]);
  static Component _cm(String t) =>
      span(classes: 'code-comment', [.text(t)]);

  @override
  Component build(BuildContext context) {
    return section(id: 'hero', [
      div(classes: 'hero-bg', []),
      div(classes: 'hero-grid-lines', []),

      // ── Left column ──────────────────────────────────────────
      div(classes: 'hero-left', [
        div(classes: 'hero-eyebrow', [.text('Available for opportunities')]),
        h1([
          span(classes: 'hero-name-gradient', [
            .text('Mohamed Yasser'),
            br(),
            .text('Arafat'),
          ]),
        ]),
        p(classes: 'hero-role', [
          span(id: 'typed-role', [.text(typedText)]),
          span(id: 'typed-cursor', [.text('|')]),
        ]),
        p(classes: 'hero-bio', [
          .text(
            'Mobile developer building production-grade Android and Flutter '
            'apps with Clean Architecture, real-time Firebase integrations, '
            'and AI-powered features. Based in Cairo — crafting experiences '
            'that scale.',
          ),
        ]),
        div(classes: 'hero-cta', [
          a(
            href: 'https://linkedin.com/in/mohamed-yasser-4164582a5',
            classes: 'btn-primary',
            attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
            [.text('↗ LinkedIn')],
          ),
          a(
            href: 'https://github.com/midoyasser16204',
            classes: 'btn-secondary',
            attributes: const {'target': '_blank', 'rel': 'noopener noreferrer'},
            [.text('⎇ GitHub')],
          ),
        ]),
      ]),

      // ── Right column — phone mockup ───────────────────────────
      div(classes: 'hero-right', [
        div(classes: 'orbit', [div(classes: 'orbit-dot', [])]),
        div(classes: 'phone-mockup', [
          div(classes: 'phone-notch', []),
          div(classes: 'phone-screen', [
            _line([_cm('// ConstructEYE · Flutter')]),
            _line([.text('\u00a0')]),
            _line([_kw('class '), _fn('SafetyBloc '), _kw('extends')]),
            _line([.text('  '), _fn('HydratedBloc'), .text('<'), _str('SafetyEvent'), .text(',')]),
            _line([.text('  '), _str('SafetyState'), .text('> {')]),
            _line([.text('\u00a0')]),
            _line([.text('  '), _fn('SafetyBloc'), .text('({')]),
            _line([.text('    '), _kw('required '), _str('AlertRepo'), .text(' repo,')]),
            _line([.text('  }) : '), _kw('super'), .text('('), _fn('initial'), .text('()) {')]),
            _line([.text('    '), _kw('on'), .text('<'), _str('ViolationDetected'), .text('>(')]),
            _line([.text('      '), _fn('_onViolation'), .text(');')]),
            _line([.text('  }')]),
            _line([.text('\u00a0')]),
            _line([.text('  '), _cm('// Firebase + AI pipeline')]),
            _line([.text('  '), _kw('Future '), _fn('_onViolation'), .text('(')]),
            _line([.text('    event, emit) '), _kw('async '), .text('{')]),
            _line([.text('    '), _kw('final '), .text('alerts =')]),
            _line([.text('      '), _kw('await '), .text('repo.'), _fn('fetch'), .text('();')]),
            _line([.text('    emit('), _fn('AlertsLoaded'), .text('(alerts));')]),
            _line([.text('  }')]),
            _line([.text('}')]),
            _line([.text('\u00a0')]),
            _line([_cm('// 🏆 Rally Egypt Finalist')]),
          ]),
          div(classes: 'phone-glow', []),
        ]),
      ]),
    ]);
  }
}
