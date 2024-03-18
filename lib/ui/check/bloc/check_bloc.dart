import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'check_event.dart';
part 'check_state.dart';

class CheckBloc extends Bloc<CheckEvent, CheckState> {
  CheckBloc() : super(CheckInitial()) {
   on<ClickUnitEvent>(clickUnitEvent);
  }

  FutureOr<void> clickUnitEvent(ClickUnitEvent event, Emitter<CheckState> emit) {
    emit(ClickUnitState());
  }
}
