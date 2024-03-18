import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'detailcheckbox_event.dart';
part 'detailcheckbox_state.dart';

class ChitietkiemtraboxBloc extends Bloc<ChitietkiemtraboxEvent, ChitietkiemtraboxState> {
  ChitietkiemtraboxBloc() : super(ChitietkiemtraboxInitial()) {
    on<CTKTBoxClickBackEvent>(ctktBoxClickBack);
    on<CTKTBoxClickButtonApDungEvent>(ctktBoxClickButtonApDung);
  }

  FutureOr<void> ctktBoxClickBack(
      CTKTBoxClickBackEvent event, Emitter<ChitietkiemtraboxState> emit) {}

  FutureOr<void> ctktBoxClickButtonApDung(
      CTKTBoxClickButtonApDungEvent event, Emitter<ChitietkiemtraboxState> emit) {}
}
