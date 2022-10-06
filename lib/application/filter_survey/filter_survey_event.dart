part of 'filter_survey_bloc.dart';

// TODO: implement enumeration sortByValue, questionType
@freezed
class FilterSurveyEvent with _$FilterSurveyEvent {
  const factory FilterSurveyEvent.sortByValueUpdated(String newValue) = _SortByValueUpdated;
  const factory FilterSurveyEvent.numberOfVotesUpdated(int lowerBound, int upperBound) = _NumberOfVotesUpdated;
  const factory FilterSurveyEvent.questionTypeUpdated(String newValue) = _QuestionTypeUpdated;
  const factory FilterSurveyEvent.resetExecuted() = _ResetExecuted;
}
