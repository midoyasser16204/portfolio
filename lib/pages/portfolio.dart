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
import '../cubits/navigation_cubit.dart';
import '../utils/web_utils.dart';
import '../components/custom_cursor.dart';
import '../components/splash_screen.dart';
import '../cubits/splash_cubit.dart';

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
  late final NavigationCubit _navCubit;
  late final SplashCubit _splashCubit;

  String _typedText = '';
  String _activeSection = '';
  bool _isSplashVisible = true;

  @override
  void initState() {
    super.initState();

    // Typing animation (pure Dart — safe on server too, but Timers only fire
    // on the client; on the server the cubit simply emits the initial '').
    _typedCubit = TypedRoleCubit();
    _navCubit = NavigationCubit();
    _splashCubit = SplashCubit();
    
    if (isClient) {
      _splashCubit.stream.listen((state) {
        if (mounted) {
          setState(() => _isSplashVisible = state.opacity > 0.0);
          if (state.opacity == 0.0) {
            _typedCubit.start();
          }
        }
      });

      _typedCubit.stream.listen((text) {
        if (mounted) setState(() => _typedText = text);
      });

      _navCubit.stream.listen((section) {
        if (mounted) setState(() => _activeSection = section);
      });
    }
  }

  @override
  void dispose() {
    _typedCubit.close();
    _navCubit.close();
    super.dispose();
  }

  @override
  Component build(BuildContext context) {
    return div(id: 'portfolio-root', [
      const SplashScreen(),
      const CustomCursor(),
      if (!_isSplashVisible) ...[
        Nav(activeSection: _activeSection),
        HeroSection(typedText: _typedText),
        const SkillsSection(),
        const ExperienceSection(),
        const ProjectsSection(),
        const EducationSection(),
        const ContactSection(),
        const FooterSection(),
      ]
    ]);
  }
}
