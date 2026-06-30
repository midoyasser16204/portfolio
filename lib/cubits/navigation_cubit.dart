import 'package:bloc/bloc.dart';
import '../utils/web_utils.dart';

class NavigationCubit extends Cubit<String> {
  static const _sectionIds = [
    'contact',
    'education',
    'projects',
    'experience',
    'skills',
  ];

  NavigationCubit() : super('') {
    if (isClient) {
      addScrollListener(_onScroll);
    }
  }

  void _onScroll() {
    final scrollY = getScrollY();
    for (final id in _sectionIds) {
      final top = getElementOffsetTop(id);
      if (scrollY >= top - 120) {
        if (state != id) emit(id);
        return;
      }
    }
    if (state != 'hero') emit('hero');
  }
}
