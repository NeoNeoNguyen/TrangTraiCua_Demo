part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class ClickNotificationEvent extends HomeEvent{}

class ClickCheckCleaningFeedingEvent extends HomeEvent{}

class ClickMoveBoxEvent extends HomeEvent{}

class ClickCheckWaterSourcesEvent extends HomeEvent{}

class ClickDevicesEvent extends HomeEvent{}

class ClickFoodsEvent extends HomeEvent{}

class ClickOtherWorkEvent extends HomeEvent{}