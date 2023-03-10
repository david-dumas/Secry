part of 'add_survey_page_bloc.dart';

@freezed
class AddSurveyPageState with _$AddSurveyPageState {
  const factory AddSurveyPageState(
      {required String surveyTitle,
      required int currentStepIndex,
      required bool isSurveySuccessfullyCreated,
      required bool isCreateNewSurveyRequestExecuted,
      required List<Question> questions}) = _AddSurveyPageState;

  factory AddSurveyPageState.initial() => AddSurveyPageState(
      surveyTitle: "",
      currentStepIndex: 0,
      isSurveySuccessfullyCreated: false,
      isCreateNewSurveyRequestExecuted: false,
      questions: [OpenQuestion(id: Uuid().v4(), text: '')]);
}
