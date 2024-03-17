import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'kiemtra_event.dart';
part 'kiemtra_state.dart';

class KiemtraBloc extends Bloc<KiemtraEvent, KiemtraState> {
  KiemtraBloc() : super(KiemtraInitial()) {
    on<KiemtraEvent>((event, emit) {

    });
  }
}
