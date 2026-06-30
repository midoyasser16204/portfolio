import 'dart:async';
import 'package:bloc/bloc.dart';
import '../utils/web_utils.dart';

class SplashState {
  final bool show;
  final double opacity;
  const SplashState(this.show, this.opacity);
}

class SplashCubit extends Cubit<SplashState> {
  static final SplashCubit _instance = SplashCubit._internal();
  factory SplashCubit() => _instance;
  
  SplashCubit._internal() : super(const SplashState(true, 1.0)) {
    if (isClient) {
      Timer(const Duration(milliseconds: 1500), () {
        emit(const SplashState(true, 0.0));
        Timer(const Duration(milliseconds: 500), () {
          emit(const SplashState(false, 0.0));
        });
      });
    }
  }
}
