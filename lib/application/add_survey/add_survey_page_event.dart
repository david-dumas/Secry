part of 'add_survey_page_bloc.dart';

@freezed
class AddSurveyPageEvent with _$AddSurveyPageEvent {
  const factory AddSurveyPageEvent.initialized() = _Initialized;
  const factory AddSurveyPageEvent.surveyTitleUpdated(String newTitle) = _SurveyTitleUpdated;
  const factory AddSurveyPageEvent.currentStepIndexUpdated(int newIndex) = _CurrentStepIndexUpdated;
  const factory AddSurveyPageEvent.newSurveyCreated() = _NewSurveyCreated;
  const factory AddSurveyPageEvent.questionsUpdated(List<Question> newQuestions) = _QuestionsUpdated;
  const factory AddSurveyPageEvent.questionAdded() = _QuestionAdded;
  const factory AddSurveyPageEvent.questionDeleted(int questionIndex) = _QuestionDeleted;
  const factory AddSurveyPageEvent.questionTypeChangedForQuestionIndex(
      int questionIndex, QuestionType newQuestionType) = _QuestionTypeChangedForQuestionIndex;
  const factory AddSurveyPageEvent.questionTextUpdatedForQuestionIndex(int questionIndex, String newText) =
      _QuestionTextUpdatedForQuestionIndex;
  const factory AddSurveyPageEvent.optionAddedForQuestionIndex(int questionIndex) = _OptionAddedForQuestionIndex;
  const factory AddSurveyPageEvent.optionDeletedForQuestionIndex(int questionIndex, int optionIndex) =
      _OptionDeletedForQuestionIndex;
  const factory AddSurveyPageEvent.optionUpdatedForQuestionIndex(
      int questionIndex, int optionIndex, String newOptionText) = _OptionUpdatedForQuestionIndex;
}
