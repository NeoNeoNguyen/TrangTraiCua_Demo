import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'movebox_event.dart';
part 'movebox_state.dart';

class MoveboxBloc extends Bloc<MoveboxEvent, MoveboxState> {
  MoveboxBloc() : super(MoveboxInitial()) {
    on<MoveboxEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
