import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:secry/domain/surveys/model/closed_question.dart';
import 'package:secry/domain/surveys/model/question.dart';
import 'package:secry/domain/surveys/model/survey_question_failure.dart';

class SurveyQuestionValidator {
  bool isAnyQuestionInvalid(List<Question> questions) {
    var isAnyQuestionInvalid = false;

    questions.asMap().forEach((questionIndex, question) {
      if (this.surveyQuestionFailureOrUnit(question: question).isLeft()) {
        isAnyQuestionInvalid = true;
        return;
      }
    });

    return isAnyQuestionInvalid;
  }

  Either<SurveyQuestionFailure, Unit> surveyQuestionFailureOrUnit({required Question question}) {
    if (question.text.length == 0 || question.text == '') {
      return left(SurveyQuestionFailure.noTitle());
    }

    if (question is ClosedQuestion) {
      if (question.options.length < 2) {
        return left(SurveyQuestionFailure.noMinimumAmountOfOptionsGiven());
      }

      var hasOptionsWithoutTextOrThatAreInvalid = false;
      question.options.asMap().forEach((index, option) {
        if (option.text.length == 0 || option.text == '') {
          hasOptionsWithoutTextOrThatAreInvalid = true;
        }
      });

      if (hasOptionsWithoutTextOrThatAreInvalid) {
        return left(SurveyQuestionFailure.invalidOptionsOrWithoutText());
      }
    }

    return right(unit);
  }

  String getErrorTextForFailure({required SurveyQuestionFailure failure}) {
    return failure.maybeMap(
      noTitle: (_) => tr('survey_questions_no_question_text_error'),
      noMinimumAmountOfOptionsGiven: (_) => tr('survey_questions_too_few_options_error'),
      invalidOptionsOrWithoutText: (_) => tr('survey_questions_option_without_text_or_invalid'),
      orElse: () {
        return tr('survey_questions_error_general');
      },
    );
  }
}
