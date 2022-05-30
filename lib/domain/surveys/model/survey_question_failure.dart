import 'package:freezed_annotation/freezed_annotation.dart';
part 'survey_question_failure.freezed.dart';

@freezed
class SurveyQuestionFailure with _$SurveyQuestionFailure {
  const factory SurveyQuestionFailure.noTitle() = NoTitle;
  const factory SurveyQuestionFailure.noMinimumAmountOfOptionsGiven() = NoMinimumAmountOfOptionsGiven;
  const factory SurveyQuestionFailure.invalidOptionsOrWithoutText() = InvalidOptionsOrWithoutText;
}
