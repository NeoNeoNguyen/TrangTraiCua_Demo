import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'importcrab_event.dart';
part 'importcrab_state.dart';

class ImportCrabBloc extends Bloc<ImportCrabEvent, ImportCrabState> {
  ImportCrabBloc() : super(NhapcuaInitial()) {
    on<ClickButtonFilterEvent>(clickButtonFilterEvent);
  }

  FutureOr<void> clickButtonFilterEvent(ClickButtonFilterEvent event, Emitter<ImportCrabState> emit) {
    emit(ClickButtonFilterState());
  }
}
