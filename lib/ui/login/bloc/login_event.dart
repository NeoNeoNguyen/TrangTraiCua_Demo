part of 'login_bloc.dart';

@immutable
sealed class DangnhapEvent {}

class ClickButtonDangNhapEvent extends DangnhapEvent {}

class ClickQuenMatKhauEvent extends DangnhapEvent{}