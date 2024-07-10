import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:the_cat_flutter/core/resources/data_state.dart';
import 'package:the_cat_flutter/features/home/domain/entities/cat_breed.dart';
import 'package:the_cat_flutter/features/home/domain/usecases/get_breeds.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetBreedsUseCase _breedsUseCase;
  SplashBloc(this._breedsUseCase) : super(SplashInitial()) {
    on<GetBreedsEvent>(onGetBreeds);
  }

  void onGetBreeds(GetBreedsEvent event, Emitter<SplashState> emit) async {
    emit(SplashInitial());
    final dataState = await _breedsUseCase();
    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(
        SplashLoaded(dataState.data!)
      );
    }

    if (dataState is DataFailed) {
      emit(
        SplashError(dataState.error!)
      );
    }
  }
}
