import 'dart:async';

import 'package:uuid/uuid.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/surveys/model/closed_question.dart';
import 'package:secry/domain/surveys/model/open_question.dart';
import 'package:secry/domain/surveys/question_type.dart';

import '../../domain/surveys/model/option_for_closed_question.dart';
import '../../domain/surveys/model/question.dart';

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
      newSurveyCreated: (e) async {},
      questionsUpdated: (e) async {
        emit(state.copyWith(questions: e.newQuestions));
      },
      questionAdded: (e) async {
        final newQuestion = OpenQuestion(id: Uuid().v4(), text: '');
        add(AddSurveyPageEvent.questionsUpdated([...state.questions, newQuestion]));
      },
      questionDeleted: (e) async {
        final updatedQuestions = [...state.questions];
        updatedQuestions.removeWhere((question) => question.id == e.questionId);

        add(AddSurveyPageEvent.questionsUpdated(updatedQuestions));
      },
      questionTypeChangedForQuestionIndex: (e) async {
        final questionBeforeChange = state.questions.length > e.questionIndex ? state.questions[e.questionIndex] : null;

        if (e.newQuestionType == QuestionType.openQuestion) {
          final questionAfterChange =
              OpenQuestion(id: questionBeforeChange?.id ?? Uuid().v4(), text: questionBeforeChange?.text ?? '');
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        } else if (e.newQuestionType == QuestionType.closedQuestion) {
          final questionAfterChange = ClosedQuestion(
              id: questionBeforeChange?.id ?? Uuid().v4(),
              text: questionBeforeChange?.text ?? '',
              options: [
                OptionForClosedQuestion(id: Uuid().v4(), text: ''),
                OptionForClosedQuestion(id: Uuid().v4(), text: '')
              ]);
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        }
      },
      questionTextUpdatedForQuestionIndex: (e) async {
        final questionBeforeChange = state.questions.length > e.questionIndex ? state.questions[e.questionIndex] : null;

        if (questionBeforeChange?.questionType == QuestionType.openQuestion) {
          final questionAfterChange = OpenQuestion(id: questionBeforeChange?.id ?? Uuid().v4(), text: e.newText);
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        } else if (questionBeforeChange?.questionType == QuestionType.closedQuestion) {
          final questionAfterChange = ClosedQuestion(
              id: questionBeforeChange?.id ?? Uuid().v4(),
              text: e.newText,
              options: (questionBeforeChange as ClosedQuestion).options);
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        }
      },
      optionAddedForQuestionIndex: (e) async {
        final newOption = OptionForClosedQuestion(id: Uuid().v4(), text: '');
        final changedOptions = [...(state.questions[e.questionIndex] as ClosedQuestion).options, newOption];

        final questionAfterChange = ClosedQuestion(
            id: state.questions[e.questionIndex].id,
            text: state.questions[e.questionIndex].text,
            options: changedOptions);
        handleQuestionUpdate(e.questionIndex, questionAfterChange);
      },
      optionDeletedForQuestionIndex: (e) async {
        final changedOptions = [...(state.questions[e.questionIndex] as ClosedQuestion).options];
        changedOptions.removeAt(e.optionIndex);

        final questionAfterChange = ClosedQuestion(
            id: state.questions[e.questionIndex].id,
            text: state.questions[e.questionIndex].text,
            options: changedOptions);
        handleQuestionUpdate(e.questionIndex, questionAfterChange);
      },
      optionUpdatedForQuestionIndex: (e) async {
        final updatedOption = OptionForClosedQuestion(id: e.oldOptionId, text: e.newOptionText);

        final changedOptions = [...(state.questions[e.questionIndex] as ClosedQuestion).options];
        changedOptions[e.optionIndex] = updatedOption;

        final questionAfterChange = ClosedQuestion(
            id: state.questions[e.questionIndex].id,
            text: state.questions[e.questionIndex].text,
            options: changedOptions);
        handleQuestionUpdate(e.questionIndex, questionAfterChange);
      },
    );
  }

  void handleQuestionUpdate(int questionIndex, Question questionAfterChange) {
    final newQuestions = [...state.questions];
    newQuestions[questionIndex] = questionAfterChange;
    add(AddSurveyPageEvent.questionsUpdated(newQuestions));
  }
}
