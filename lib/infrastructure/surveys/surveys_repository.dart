import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';

import 'surveys_api_service.dart';

@Singleton(as: ISurveysRepository)
class SurveysRepository extends ISurveysRepository {
  final SurveysApiService _SurveysApiService;

  SurveysRepository(this._SurveysApiService) : super();

  Future<List<GroupOverviewRowInfo>> getMostRecentSurveysForGroup({required String groupId}) async {
    try {
      final response = await _SurveysApiService.api.getMostRecentPrivateSurveysForGroup();
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
        final List<GroupOverviewRowInfo> groupOverviewRowsData =
            (json.decode(response.data) as List).map((json) => GroupOverviewRowInfo.fromJsonMap(json)).toList();
        return groupOverviewRowsData;
      } else {
        return List.empty();
      }
    } catch (error) {
      print(error);
      return List.empty();
    }
  }
}
