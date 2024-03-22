part of 'exportcrab_bloc.dart';

@immutable
sealed class ExportCrabEvent {}

class ClickFilterEvent extends ExportCrabEvent{}

class ClickButtonExportCrabEvent extends ExportCrabEvent {}
