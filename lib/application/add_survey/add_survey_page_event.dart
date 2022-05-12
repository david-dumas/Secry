part of 'add_survey_page_bloc.dart';

@freezed
class AddSurveyPageEvent with _$AddSurveyPageEvent {
  const factory AddSurveyPageEvent.initialized() = _Initialized;
  const factory AddSurveyPageEvent.surveyTitleUpdated(String newTitle) = _SurveyTitleUpdated;
  const factory AddSurveyPageEvent.currentStepIndexUpdated(int newIndex) = _CurrentStepIndexUpdated;
  const factory AddSurveyPageEvent.newSurveyCreated() = _NewSurveyCreated;
}
