import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/surveys/i_surveys_repository.dart';

import 'surveys_api_service.dart';

@Singleton(as: ISurveysRepository)
class SurveysRepository extends ISurveysRepository {
  final SurveysApiService _SurveysApiService;

  SurveysRepository(this._SurveysApiService) : super();
}
