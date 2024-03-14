import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'loc_event.dart';
part 'loc_state.dart';

class LocBloc extends Bloc<LocEvent, LocState> {
  LocBloc() : super(LocInitial()) {
    on<LocEvent>((event, emit) {

    });
  }
}
