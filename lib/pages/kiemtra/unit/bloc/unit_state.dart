part of 'unit_bloc.dart';

@immutable
abstract class UnitState {}

abstract class UnitActionState extends UnitState {}

class UnitInitial extends UnitState{}

class UnitLoadingState extends UnitState{}

class UnitLoadedSuccessState extends UnitState{}

class UnitErrorState extends UnitState{}

class UnitClickButtonBackState extends UnitState{}

class UnitClickButtonLocState extends UnitState{}

class UnitClickButtonKiemTraVeSinhState extends UnitState{}

class UnitClickXemThongTinBoxState extends UnitState{}

class UnitClickButtonChoAnTatCa extends UnitState{}