part of 'check_bloc.dart';

@immutable
abstract class CheckState {}

abstract class CheckActionState extends CheckState{}

class CheckInitial extends CheckState {}

class CheckLoadingState extends CheckState{}

class CheckLoadedSussessState extends CheckState{}

class CheckErrorState extends CheckState{}

class ClickUnitState extends CheckState{}
