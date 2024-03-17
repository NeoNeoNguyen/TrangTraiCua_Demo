import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'xuatcua_event.dart';
part 'xuatcua_state.dart';

class XuatcuaBloc extends Bloc<XuatcuaEvent, XuatcuaState> {
  XuatcuaBloc() : super(XuatcuaInitial()) {
    on<XuatcuaEvent>((event, emit) {

    });
  }
}
