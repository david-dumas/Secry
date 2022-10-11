import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';
import '../../domain/general/survey_row_info.dart';
import '../../infrastructure/surveys/surveys_repository.dart';

part 'surveys_event.dart';

part 'surveys_state.dart';

part 'surveys_bloc.freezed.dart';

@injectable
class SurveyBloc extends Bloc<SurveysEvent, SurveysState> {
  final ISurveysRepository _surveysRepository;

  SurveyBloc(this._surveysRepository) : super(SurveysState.initial()) {
    on<SurveysEvent>(_onEvent);
  }

  Future<void> _onEvent(SurveysEvent event, Emitter<SurveysState> emit) async {
    await event.map(
        initialized: (e) async {
      fetchSurveyQuestions(id: e.id);
    },
        SurveyQuestionsUpdated: (e) async {
      emit(state.copyWith(SurveyQuestionsInfo: e.SurveyQuestionsInfo));
    },
        isFetchingUpdated: (e) async {
      emit(state.copyWith(isFetching: e.isFetching));
    },
        isDataFetchedUpdated: (e) async {
      emit(state.copyWith(isDataFetched: e.isFetched));
    });
  }

  Future<void> fetchSurveyQuestions({required String id}) async {
    add(SurveysEvent.isFetchingUpdated(true));

    final surveyQuestionWithGeneralInfo =
        await _surveysRepository.getSurveysDummyData();
    print(surveyQuestionWithGeneralInfo.toString());
    print("lenght: ${surveyQuestionWithGeneralInfo.length}");
      final mostRecentSurveyQuestions = surveyQuestionWithGeneralInfo;
      final surveyQuestionItems = mostRecentSurveyQuestions
          .map((SurveyQuestionsInfo) => SurveyRowInfo(
              questionId: SurveyQuestionsInfo.id,
              questiontitle: SurveyQuestionsInfo.title,
              questiontype: SurveyQuestionsInfo.type))
          .toList();

      add(SurveysEvent.SurveyQuestionsUpdated(surveyQuestionItems));

      add(SurveysEvent.isFetchingUpdated(false));
      add(SurveysEvent.isDataFetchedUpdated(true));
  }
}
