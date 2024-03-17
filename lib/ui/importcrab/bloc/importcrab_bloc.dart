import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'importcrab_event.dart';
part 'importcrab_state.dart';

class NhapcuaBloc extends Bloc<NhapcuaEvent, NhapcuaState> {
  NhapcuaBloc() : super(NhapcuaInitial()) {
    on<NhapcuaEvent>((event, emit) {

    });
  }
}
