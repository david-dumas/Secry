import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_survey_page_event.dart';
part 'add_survey_page_state.dart';
part 'add_survey_page_bloc.freezed.dart';

@injectable
class AddSurveyPageBloc extends Bloc<AddSurveyPageEvent, AddSurveyPageState> {
  AddSurveyPageBloc() : super(AddSurveyPageState.initial()) {
    on<AddSurveyPageEvent>(_onEvent);
  }

  Future<void> _onEvent(AddSurveyPageEvent event, Emitter<AddSurveyPageState> emit) async {
    await event.map(
      initialized: (e) async {},
      surveyTitleUpdated: (e) async {
        emit(state.copyWith(surveyTitle: e.newTitle));
      },
      currentStepIndexUpdated: (e) async {
        emit(state.copyWith(currentStepIndex: e.newIndex));
      },
    );
  }
}
