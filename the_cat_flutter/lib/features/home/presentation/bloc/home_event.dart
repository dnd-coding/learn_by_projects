part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class SwitchPageEvent extends HomeEvent {
  final int selectedTab;

  const SwitchPageEvent(this.selectedTab);

  @override
  List<Object> get props => [selectedTab];
}
