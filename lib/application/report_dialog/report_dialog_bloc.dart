import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'report_dialog_event.dart';
part 'report_dialog_state.dart';
part 'report_dialog_bloc.freezed.dart';

@injectable
class ReportDialogBloc extends Bloc<ReportDialogEvent, ReportDialogState> {
  ReportDialogBloc() : super(ReportDialogState.initial()) {
    on<ReportDialogEvent>((_onEvent));
  }

  Future<void> _onEvent(ReportDialogEvent event, Emitter<ReportDialogState> emit) async {
    await event.map(
        reportedTileExcecuted: (e) async {
          emit(state.copyWith(selectedReportTile: e.newValue));
        },
        initialized: (e) async {});
  }
}
