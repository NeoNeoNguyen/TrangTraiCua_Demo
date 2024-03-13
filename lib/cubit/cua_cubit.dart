import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cua_state.dart';

class CuaCubit extends Cubit<CuaState> {
  CuaCubit() : super(CuaInitial());
}
