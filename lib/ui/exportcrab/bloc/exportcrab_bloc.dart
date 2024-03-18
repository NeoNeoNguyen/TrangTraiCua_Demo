import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'exportcrab_event.dart';
part 'exportcrab_state.dart';

class XuatcuaBloc extends Bloc<XuatcuaEvent, XuatcuaState> {
  XuatcuaBloc() : super(XuatcuaInitial()) {
    on<XuatcuaEvent>((event, emit) {

    });
  }
}
