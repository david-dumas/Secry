part of 'report_dialog_bloc.dart';

@freezed
class ReportDialogState with _$ReportDialogState {
  const factory ReportDialogState({required int selectedReportTile}) = _ReportDialogState;

  factory ReportDialogState.initial() => ReportDialogState(selectedReportTile: 0);
}
