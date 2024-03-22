import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'exportcrab_event.dart';
part 'exportcrab_state.dart';

class ExportCrabBloc extends Bloc<ExportCrabEvent, ExportCrabState> {
  ExportCrabBloc() : super(ExportCrabInitial()) {
    on<ClickFilterEvent>(clickFilterEvent);
    on<ClickButtonExportCrabEvent>(clickButtonExportCrabEvent);
  }

  FutureOr<void> clickFilterEvent(ClickFilterEvent event, Emitter<ExportCrabState> emit) {
    emit(ClickFilterState());
  }



  FutureOr<void> clickButtonExportCrabEvent(ClickButtonExportCrabEvent event, Emitter<ExportCrabState> emit) {
    emit(ClickButtonExportCrabState());
  }
}
