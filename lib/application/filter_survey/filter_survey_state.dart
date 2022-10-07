part of 'filter_survey_bloc.dart';

@freezed
class FilterSurveyState with _$FilterSurveyState {
  const factory FilterSurveyState(
      {required String sortByValue,
      required double numberOfVotesLowerBound,
      required double numberOfVotesUpperBound,
      required String questionType,
      required double initialNumberOfVotesLowerBound,
      required double initialNumberOfVotesUpperBound}) = _FilterSurveyState;

  factory FilterSurveyState.initial() => FilterSurveyState(
        sortByValue: "",
        numberOfVotesLowerBound: 1.0,
        numberOfVotesUpperBound: 20.0,
        initialNumberOfVotesLowerBound: 1.0,
        initialNumberOfVotesUpperBound: 20.0,
        questionType: "date"
      );
}
