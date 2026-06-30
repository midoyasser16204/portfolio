import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../cubits/splash_cubit.dart';

@client
class SplashScreen extends StatefulComponent {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashCubit _cubit;
  SplashState _state = const SplashState(true, 1.0);

  @override
  void initState() {
    super.initState();
    _cubit = SplashCubit();
    _cubit.stream.listen((state) {
      if (mounted) setState(() => _state = state);
    });
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Component build(BuildContext context) {
    if (!_state.show) return span([]); // empty placeholder
    
    return div(
      classes: 'splash-screen',
      attributes: {'style': 'opacity: ${_state.opacity};'},
      [
        div(classes: 'splash-content', [
          h1(classes: 'splash-logo', [.text('MY')]),
          div(classes: 'splash-loader', []),
        ]),
      ],
    );
  }
}
