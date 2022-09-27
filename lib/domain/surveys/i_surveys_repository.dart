import 'package:retrofit/retrofit.dart';

import 'package:secry/domain/general/survey_row_info.dart';

abstract class ISurveysRepository {
  Future<List<SurveyRowInfo>> getSurveysDummyData();
}
