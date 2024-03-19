import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ClickNotificationEvent>(clickCardUnitEvent);
    on<ClickCheckCleaningFeedingEvent>(clickCheckCleaningFeedingEvent);
    on<ClickCheckWaterSourcesEvent>(clickCheckWaterSourcesEvent);
    on<ClickDevicesEvent>(clickDevicesEvent);
    on<ClickFoodsEvent>(clickFoodsEvent);
    on<ClickMoveBoxEvent>(clickMoveBoxEvent);
    on<ClickOtherWorkEvent>(clickOtherWorkEvent);
  }

  FutureOr<void> clickCardUnitEvent(
      ClickNotificationEvent event, Emitter<HomeState> emit) {
    emit(ClickNotificationState());
  }

  FutureOr<void> clickCheckCleaningFeedingEvent(
      ClickCheckCleaningFeedingEvent event, Emitter<HomeState> emit) {
    emit(ClickCheckCleaningFeedingState());
  }

  FutureOr<void> clickCheckWaterSourcesEvent(
      ClickCheckWaterSourcesEvent event, Emitter<HomeState> emit) {
    emit(ClickCheckWaterSourcesState());
  }

  FutureOr<void> clickDevicesEvent(
      ClickDevicesEvent event, Emitter<HomeState> emit) {
    emit(ClickDevicesState());
  }

  FutureOr<void> clickFoodsEvent(
      ClickFoodsEvent event, Emitter<HomeState> emit) {
    emit(ClickFoodsState());
  }

  FutureOr<void> clickMoveBoxEvent(
      ClickMoveBoxEvent event, Emitter<HomeState> emit) {
    emit(ClickMoveBoxState());
  }

  FutureOr<void> clickOtherWorkEvent(
      ClickOtherWorkEvent event, Emitter<HomeState> emit) {
    emit(ClickOtherWorkState());
  }
}
