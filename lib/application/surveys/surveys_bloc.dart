import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:secry/domain/groups/feature_type.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';
import 'package:secry/domain/surveys/i_surveys_api_service.dart';

import '../../domain/general/survey_row_info.dart';
import '../../util/avatars/avatar_helper.dart';

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
        fetchChatsAndSurveys(groupId: e.groupId);
      },
      SurveyRefreshed: (e) async {
      },
      isFetchingUpdated: (e) async {
        emit(state.copyWith(isFetching: e.isFetching));
      },
      isDataFetchedUpdated: (e) async {
        emit(state.copyWith(isDataFetched: e.isFetched));
      },
      currentFeatureTypeUpdated: (e) async {
        emit(state.copyWith(currentFeatureType: e.newFeatureType));
      }
    );
  }

  Future<void> fetchChatsAndSurveys({required String groupId}) async {
    add(SurveysEvent.isFetchingUpdated(true));

    final SurveysGeneralInfo = await _surveysRepository.getSurveysDummyData();
    // final groupChatsAndSurveysWithGeneralGroupInfo = await _groupsRepository.getChatsAndSurveys(groupId: groupId);

    if (SurveysGeneralInfo != null) {
      final mostRecentGroupChats = SurveysGeneralInfo;
      final chatOverviewRows = mostRecentGroupChats
          .map((generalChatInfo) => SurveyRowInfo(
          id: generalChatInfo.id, title: generalChatInfo.title, createdAt: generalChatInfo.createdAt))
          .toList();

      add(SurveysEvent.isFetchingUpdated(false));
      add(SurveysEvent.isDataFetchedUpdated(true));
    }
  }
}
