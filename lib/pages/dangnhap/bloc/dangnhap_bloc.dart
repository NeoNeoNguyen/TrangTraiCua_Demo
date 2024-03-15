import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dangnhap_event.dart';
part 'dangnhap_state.dart';

class DangnhapBloc extends Bloc<DangnhapEvent, DangnhapState> {
  DangnhapBloc() : super(DangnhapInitial()) {
    on<ClickButtonDangNhapEvent>(clickButtonDangNhapEvent);
    on<ClickQuenMatKhauEvent>(clickQuenMatKhauEvent);
  }

  FutureOr<void> clickButtonDangNhapEvent(
      ClickButtonDangNhapEvent event, Emitter<DangnhapState> emit) {
        emit(DangnhapClickButtonDangNhapState());
      }

  FutureOr<void> clickQuenMatKhauEvent(
      ClickQuenMatKhauEvent event, Emitter<DangnhapState> emit) {
        emit(DangnhapClickQuenMatKhauState());
      }
}
