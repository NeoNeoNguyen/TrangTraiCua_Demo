import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'nhapcua_event.dart';
part 'nhapcua_state.dart';

class NhapcuaBloc extends Bloc<NhapcuaEvent, NhapcuaState> {
  NhapcuaBloc() : super(NhapcuaInitial()) {
    on<NhapcuaEvent>((event, emit) {

    });
  }
}
