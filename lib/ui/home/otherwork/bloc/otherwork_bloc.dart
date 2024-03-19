import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'otherwork_event.dart';
part 'otherwork_state.dart';

class OtherworkBloc extends Bloc<OtherworkEvent, OtherworkState> {
  OtherworkBloc() : super(OtherworkInitial()) {
    on<OtherworkEvent>((event, emit) {

    });
  }
}
