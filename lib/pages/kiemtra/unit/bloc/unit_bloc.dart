// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'unit_event.dart';
part 'unit_state.dart';

class UnitBloc extends Bloc<UnitEvent, UnitState> {
  UnitBloc() : super(UnitInitial()) {
    on<UnitClickBackEvent>(unitClickBackEvent);
    on<UnitClickButtonLocEvent>(unitClickButtonLocEvent);
    on<UnitClickButtonKiemTraVeSinhEvent>(unitClickButtonKiemTraVeSinhEvent);
    on<UnitClickXemThongTinBoxEvent>(unitClickXemThongTinBoxEvent);
    on<UnitChoAnTatCaEvent>(unitChoAnTatCaEvent);
  }

  FutureOr<void> unitClickBackEvent(
      UnitClickBackEvent event, Emitter<UnitState> emit) {
    emit(UnitClickButtonBackState());
  }

  FutureOr<void> unitClickButtonLocEvent(
      UnitClickButtonLocEvent event, Emitter<UnitState> emit) {
    emit(UnitClickButtonLocState());
  }

  FutureOr<void> unitClickButtonKiemTraVeSinhEvent(
      UnitClickButtonKiemTraVeSinhEvent event, Emitter<UnitState> emit) {}

  FutureOr<void> unitClickXemThongTinBoxEvent(
      UnitClickXemThongTinBoxEvent event, Emitter<UnitState> emit) {
    emit(UnitClickXemThongTinBoxState());
  }

  FutureOr<void> unitChoAnTatCaEvent(
      UnitChoAnTatCaEvent event, Emitter<UnitState> emit) {}
}
