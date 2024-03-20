import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fliter_event.dart';
part 'filter_state.dart';

class LocBloc extends Bloc<LocEvent, LocState> {
  LocBloc() : super(LocInitial()) {
    on<ClickBackEvent>(clickBackEvent);
  }

  FutureOr<void> clickBackEvent(ClickBackEvent event, Emitter<LocState> emit) {
    emit(ClickBackState());
  }
}
