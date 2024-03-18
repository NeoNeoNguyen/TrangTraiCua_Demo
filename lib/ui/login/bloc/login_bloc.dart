import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<ClickButtonLoginEvent>(clickButtonLoginEvent);
    on<ClickResetPassEvent>(clickResetPassEvent);
  }

  FutureOr<void> clickButtonLoginEvent(
      ClickButtonLoginEvent event, Emitter<LoginState> emit) {
        emit(LoginClickButtonLoginState());
      }

  FutureOr<void> clickResetPassEvent(
      ClickResetPassEvent event, Emitter<LoginState> emit) {
        emit(LoginClickResetPassState());
      }
}
