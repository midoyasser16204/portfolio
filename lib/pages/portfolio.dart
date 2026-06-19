import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/contact.dart';
import '../components/education.dart';
import '../components/experience.dart';
import '../components/footer.dart';
import '../components/hero.dart';
import '../components/nav.dart';
import '../components/projects.dart';
import '../components/skills.dart';
import '../cubits/typed_role_cubit.dart';
import '../utils/web_utils.dart';

/// Root client component. Annotated with @client so Jaspr compiles it to
/// JavaScript and hydrates it in the browser after SSR pre-rendering.
///
/// Manages two pieces of live state:
///  - [_typedText]      — updated by TypedRoleCubit every 45-80 ms
///  - [_activeSection]  — updated on window scroll via web_utils
@client
class Portfolio extends StatefulComponent {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  late final TypedRoleCubit _typedCubit;

  String _typedText = '';
  String _activeSection = '';

  static const _sectionIds = [
    'contact',
    'education',
    'projects',
    'experience',
    'skills',
  ];

  @override
  void initState() {
    super.initState();

    // Typing animation (pure Dart — safe on server too, but Timers only fire
    // on the client; on the server the cubit simply emits the initial '').
    _typedCubit = TypedRoleCubit();
    
    if (isClient) {
      _typedCubit.start();
      _typedCubit.stream.listen((text) {
        setState(() => _typedText = text);
      });

      // Scroll-based nav highlighting — only runs in the browser.
      addScrollListener(_onScroll);
    }
  }

  void _onScroll() {
    final scrollY = getScrollY();
    for (final id in _sectionIds) {
      final top = getElementOffsetTop(id);
      if (scrollY >= top - 120) {
        if (_activeSection != id) setState(() => _activeSection = id);
        return;
      }
    }
    if (_activeSection != 'hero') setState(() => _activeSection = 'hero');
  }

  @override
  void dispose() {
    _typedCubit.close();
    super.dispose();
  }

  @override
  Component build(BuildContext context) {
    return div(id: 'portfolio-root', [
      Nav(activeSection: _activeSection),
      HeroSection(typedText: _typedText),
      const SkillsSection(),
      const ExperienceSection(),
      const ProjectsSection(),
      const EducationSection(),
      const ContactSection(),
      const FooterSection(),
    ]);
  }
}
