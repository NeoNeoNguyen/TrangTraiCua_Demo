import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'suport_bloc_event.dart';
part 'suport_bloc_state.dart';

class SuportBlocBloc extends Bloc<SuportBlocEvent, SuportBlocState> {
  SuportBlocBloc() : super(SuportBlocInitial()) {
    on<SuportBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
