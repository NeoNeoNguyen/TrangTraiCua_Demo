import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cua_event.dart';
part 'cua_state.dart';

class CuaBloc extends Bloc<CuaEvent, CuaState> {
  CuaBloc() : super(CuaInitial()) {
    on<CuaEvent>((event, emit) {

    });
  }
}
