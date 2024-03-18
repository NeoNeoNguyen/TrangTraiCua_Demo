part of 'login_bloc.dart';

@immutable
sealed class LoginEvent {}

class ClickButtonLoginEvent extends LoginEvent {}

class ClickResetPassEvent extends LoginEvent{}
