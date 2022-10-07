part of 'filter_survey_bloc.dart';

// TODO: implement enumeration sortByValue, questionType
@freezed
class FilterSurveyEvent with _$FilterSurveyEvent {
  const factory FilterSurveyEvent.initialized() = _Initialized;
  const factory FilterSurveyEvent.sortByValueUpdated(DropdownType newValue) = _SortByValueUpdated;
  const factory FilterSurveyEvent.numberOfVotesUpdated(double lowerBound, double upperBound) = _NumberOfVotesUpdated;
  const factory FilterSurveyEvent.initialNumberOfVotesUpdated(double lowerBound, double upperBound) = _InitialNumberOfVotesUpdated;
  const factory FilterSurveyEvent.questionTypeUpdated(String newValue) = _QuestionTypeUpdated;
  const factory FilterSurveyEvent.resetExecuted() = _ResetExecuted;
}
