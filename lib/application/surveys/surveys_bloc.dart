import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';
import '../../domain/general/survey_answer_info.dart';
import '../../domain/general/general_survey_question.dart';

part 'surveys_event.dart';

part 'surveys_state.dart';

part 'surveys_bloc.freezed.dart';

@injectable
class SurveysBloc extends Bloc<SurveysEvent, SurveysState> {
  final ISurveysRepository _surveysRepository;

  SurveysBloc(this._surveysRepository) : super(SurveysState.initial()) {
    on<SurveysEvent>(_onEvent);
  }

  Future<void> _onEvent(SurveysEvent event, Emitter<SurveysState> emit) async {
    await event.map(initialized: (e) async {
      fetchSurveyQuestions(id: e.id);
    },
        GeneralQuestionUpdated: (e) async {
      emit(state.copyWith(GeneralSurveyInfo: e.GeneralSurveyInfo));
    },
  SurveyQuestionsUpdated: (e) async {
      emit(state.copyWith(SurveyQuestionsInfo: e.SurveyQuestionsInfo));
    }, isFetchingUpdated: (e) async {
      emit(state.copyWith(isFetching: e.isFetching));
    }, isDataFetchedUpdated: (e) async {
      emit(state.copyWith(isDataFetched: e.isFetched));
    }, isDataQuestionFetchedUpdated: (e) async {
      emit(state.copyWith(isDataFetched: e.isQuestionFetched));
    }, currentQuestionUpdated: (e) async {
      emit(state.copyWith(currentQuestionIndex: e.currentQuestion));
    }, totalQuestionsUpdated: (e) async {
      emit(state.copyWith(totalQuestions: e.totalQuestions));
    });
  }
  Future<void> fetchSurveyQuestions({required String id}) async {
    add(SurveysEvent.isFetchingUpdated(true));

    final surveyQuestionWithGeneralInfo = await _surveysRepository.getSurveysDummyData();
    final mostRecentSurveyQuestions = surveyQuestionWithGeneralInfo;
    final surveyQuestion = mostRecentSurveyQuestions
        .map((SurveyQuestionGeneralInfo) => GeneralSurveyQuestion(
      questionId: SurveyQuestionGeneralInfo.questionId,
      title: SurveyQuestionGeneralInfo.title,
      type: SurveyQuestionGeneralInfo.type,
    ))
        .toList();


    add(SurveysEvent.GeneralQuestionUpdated(surveyQuestion));

    add(SurveysEvent.isFetchingUpdated(false));
    add(SurveysEvent.isDataQuestionFetchedUpdated(true));

    add(SurveysEvent.isFetchingUpdated(true));
final surveyAnswerGeneralInfo = await _surveysRepository.getSurveyQuestionDummyData("632de441017ca6e1bd3bd8c0");
final mostRecentSurveyAnswers = surveyAnswerGeneralInfo;
final surveyQuestionItems = mostRecentSurveyAnswers
    .map((SurveyQuestionsInfo) => SurveyAnswerInfo(
answerId: SurveyQuestionsInfo.answerId,
answer: SurveyQuestionsInfo.answer,
))
    .toList();


add(SurveysEvent.SurveyQuestionsUpdated(surveyQuestionItems));

add(SurveysEvent.isFetchingUpdated(false));
add(SurveysEvent.isDataFetchedUpdated(true));
  }

}
