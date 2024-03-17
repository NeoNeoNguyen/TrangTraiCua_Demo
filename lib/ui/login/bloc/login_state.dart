part of 'login_bloc.dart';

@immutable
abstract class DangnhapState {}

abstract class DangnhapActionState extends DangnhapState{}

class DangnhapInitial extends DangnhapState {}

class DangnhapLoadingState extends DangnhapState{}

class DangnhapLoadedSuccsessState extends DangnhapState{}

class DangnhapErrorState extends DangnhapState{}

class DangnhapClickButtonDangNhapState extends DangnhapState{}

class DangnhapClickQuenMatKhauState extends DangnhapState{}


