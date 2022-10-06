part of 'filter_survey_bloc.dart';

@freezed
class FilterSurveyState with _$FilterSurveyState {
  const factory FilterSurveyState(
      {required String sortByValue,
      required int numberOfVotesLowerBound,
      required int numberOfVotesUpperBound,
      required String questionType}) = _FilterSurveyState;

  factory FilterSurveyState.initial() => FilterSurveyState(
        sortByValue: "",
        numberOfVotesLowerBound: 1,
        numberOfVotesUpperBound: 20,
        questionType: "",
      );
}
