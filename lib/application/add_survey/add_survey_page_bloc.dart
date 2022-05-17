import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/surveys/model/closed_question.dart';
import 'package:secry/domain/surveys/model/open_question.dart';
import 'package:secry/domain/surveys/question_type.dart';

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
        final newQuestion = OpenQuestion(text: '');
        add(AddSurveyPageEvent.questionsUpdated([...state.questions, newQuestion]));
      },
      questionDeleted: (e) async {
        add(AddSurveyPageEvent.questionsUpdated([...state.questions]..removeAt(e.questionIndex)));
      },
      questionTypeChangedForQuestionIndex: (e) async {
        final questionBeforeChange = state.questions.length > e.questionIndex ? state.questions[e.questionIndex] : null;

        if (e.newQuestionType == QuestionType.openQuestion) {
          final questionAfterChange = OpenQuestion(text: questionBeforeChange?.text ?? '');
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        } else if (e.newQuestionType == QuestionType.closedQuestion) {
          final questionAfterChange = ClosedQuestion(text: questionBeforeChange?.text ?? '', options: []);
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        }
      },
      questionTextUpdatedForQuestionIndex: (e) async {
        final questionBeforeChange = state.questions.length > e.questionIndex ? state.questions[e.questionIndex] : null;

        if (questionBeforeChange?.questionType == QuestionType.openQuestion) {
          final questionAfterChange = OpenQuestion(text: e.newText);
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        } else if (questionBeforeChange?.questionType == QuestionType.closedQuestion) {
          final questionAfterChange =
              ClosedQuestion(text: e.newText, options: (questionBeforeChange as ClosedQuestion).options);
          handleQuestionUpdate(e.questionIndex, questionAfterChange);
        }
      },
      optionAddedForQuestionIndex: (e) async {},
      optionDeletedForQuestionIndex: (e) async {},
      optionUpdatedForQuestionIndex: (e) async {},
    );
  }

  void handleQuestionUpdate(int questionIndex, Question questionAfterChange) {
    add(AddSurveyPageEvent.questionsUpdated([...state.questions]..removeAt(questionIndex)));

    final newQuestions = [...state.questions];
    newQuestions[questionIndex] = questionAfterChange;
    add(AddSurveyPageEvent.questionsUpdated(newQuestions));
  }
}
