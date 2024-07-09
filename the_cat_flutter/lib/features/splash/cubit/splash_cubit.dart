import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void startSplash() {
    emit(SplashLoading());
    Future.delayed(Duration(seconds: 4), () {
      emit(SplashLoaded());
    });
  }
}
