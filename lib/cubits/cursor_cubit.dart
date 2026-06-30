import 'package:bloc/bloc.dart';
import '../utils/web_utils.dart';

class CursorState {
  final double x;
  final double y;
  const CursorState(this.x, this.y);
}

class CursorCubit extends Cubit<CursorState> {
  CursorCubit() : super(const CursorState(-100, -100)) {
    if (isClient) {
      addMouseMoveListener((x, y) {
        emit(CursorState(x, y));
      });
    }
  }
}
