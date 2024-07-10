part of 'splash_bloc.dart';

sealed class SplashState extends Equatable {
  final List<CatBreedEntity>? breeds;
  final DioException? dioException;
  const SplashState({this.breeds, this.dioException});

  @override
  List<Object?> get props => [breeds, dioException];
}

final class SplashInitial extends SplashState {}

final class SplashLoading extends SplashState {}

final class SplashLoaded extends SplashState {
  const SplashLoaded(List<CatBreedEntity> breeds) : super(breeds: breeds);
}

final class SplashError extends SplashState {
  const SplashError(DioException dioException) : super(dioException: dioException);
}
