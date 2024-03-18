part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class ClickNotificationState extends HomeState{}

class ClickCheckCleaningFeedingState extends HomeState{}

class ClickCheckWaterSourcesState extends HomeState{}

class ClickDevicesState extends HomeState{}

class ClickFoodsState extends HomeState{}

class ClickMoveBoxState extends HomeState{}

class ClickOtherWorkState extends HomeState{}
