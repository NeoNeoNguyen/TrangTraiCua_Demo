part of 'login_bloc.dart';

@immutable
abstract class LoginState {}

abstract class LoginActionState extends LoginState{}

class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState{}

class LoginLoadedSuccsessState extends LoginState{}

class LoginErrorState extends LoginState{}

class LoginClickButtonLoginState extends LoginState{}

class LoginClickResetPassState extends LoginState{}


