part of 'chitietkiemtrabox_bloc.dart';

@immutable
abstract class ChitietkiemtraboxState {}

abstract class ChiTietKiemTraBoxActionState extends ChitietkiemtraboxState{}

class ChitietkiemtraboxInitial extends ChitietkiemtraboxState {}

class ChiTietKiemTraBoxLoadingState extends ChitietkiemtraboxState{}

class ChiTietKiemTraBoxLoadedSuccessState extends ChitietkiemtraboxState{}

class ChiTietKiemTraBoxErrorState extends ChitietkiemtraboxState{}

class ChiTietKiemTraBoxClickBackState extends ChitietkiemtraboxState{}

class ChiTietKiemTraBoxClickButtonApDung extends ChitietkiemtraboxState{}