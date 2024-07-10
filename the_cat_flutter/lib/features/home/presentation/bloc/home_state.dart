part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  final int selectedPage;
  const HomeState(this.selectedPage);
  
  @override
  List<Object?> get props => [selectedPage];
}

final class HomeInitial extends HomeState {
  const HomeInitial(super.selectedPage);
}

final class HomePageSelected extends HomeState {
  const HomePageSelected(super.selectedPage);
}
