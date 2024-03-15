part of 'unit_bloc.dart';

@immutable
sealed class UnitEvent {}

class UnitClickBackEvent extends UnitEvent{}

class UnitClickButtonLocEvent extends UnitEvent{}

class UnitClickButtonKiemTraVeSinhEvent extends UnitEvent{}

class UnitClickXemThongTinBoxEvent extends UnitEvent{}

class UnitChoAnTatCaEvent extends UnitEvent{}


