import 'dart:async';
import 'package:bloc/bloc.dart';

/// Drives the character-by-character typing animation in the hero section.
/// Cycles through [_roles] indefinitely: types forward, pauses, deletes, repeats.
class TypedRoleCubit extends Cubit<String> {
  static const _roles = [
    'Android Developer',
    'Flutter Developer',
    'Clean Architecture Advocate',
    'Mobile UI Engineer',
  ];

  int _roleIdx = 0;
  int _charIdx = 0;
  bool _deleting = false;
  Timer? _timer;

  TypedRoleCubit() : super('');

  void start() {
    _schedule(400); // small initial delay before first character
  }

  void _schedule(int ms) {
    _timer = Timer(Duration(milliseconds: ms), _tick);
  }

  void _tick() {
    final cur = _roles[_roleIdx];
    if (!_deleting) {
      _charIdx++;
      emit(cur.substring(0, _charIdx));
      if (_charIdx == cur.length) {
        _deleting = true;
        _schedule(1800); // pause at end before deleting
        return;
      }
      _schedule(80);
    } else {
      _charIdx--;
      emit(cur.substring(0, _charIdx));
      if (_charIdx == 0) {
        _deleting = false;
        _roleIdx = (_roleIdx + 1) % _roles.length;
      }
      _schedule(_charIdx == 0 ? 200 : 45);
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
