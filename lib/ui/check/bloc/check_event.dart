part of 'check_bloc.dart';

@immutable
sealed class CheckEvent {}

class ClickUnitEvent extends CheckEvent{}
