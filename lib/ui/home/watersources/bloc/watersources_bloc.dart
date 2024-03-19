import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'watersources_event.dart';
part 'watersources_state.dart';

class WatersourcesBloc extends Bloc<WatersourcesEvent, WatersourcesState> {
  WatersourcesBloc() : super(WatersourcesInitial()) {
    on<WatersourcesEvent>((event, emit) {

    });
  }
}
