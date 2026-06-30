import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import '../cubits/cursor_cubit.dart';

@client
class CustomCursor extends StatefulComponent {
  const CustomCursor({super.key});

  @override
  State<CustomCursor> createState() => _CustomCursorState();
}

class _CustomCursorState extends State<CustomCursor> {
  late final CursorCubit _cubit;
  CursorState _state = const CursorState(-100, -100);

  @override
  void initState() {
    super.initState();
    _cubit = CursorCubit();
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
    return div([
      div(
        classes: 'custom-cursor',
        attributes: {'style': 'left: ${_state.x}px; top: ${_state.y}px;'},
        [],
      ),
      div(
        classes: 'custom-cursor-follower',
        attributes: {'style': 'left: ${_state.x}px; top: ${_state.y}px;'},
        [],
      ),
    ]);
  }
}
