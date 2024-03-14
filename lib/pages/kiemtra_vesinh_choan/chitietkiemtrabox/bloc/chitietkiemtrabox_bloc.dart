import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chitietkiemtrabox_event.dart';
part 'chitietkiemtrabox_state.dart';

class ChitietkiemtraboxBloc extends Bloc<ChitietkiemtraboxEvent, ChitietkiemtraboxState> {
  ChitietkiemtraboxBloc() : super(ChitietkiemtraboxInitial()) {
    on<ChitietkiemtraboxEvent>((event, emit) {

    });
  }
}
