part of 'report_dialog_bloc.dart';

@freezed
class ReportDialogEvent with _$ReportDialogEvent {
  const factory ReportDialogEvent.reportedTileExcecuted(int newValue) = _ReportedTileExcecuted;
  const factory ReportDialogEvent.initialized() = _Initialized;
}
