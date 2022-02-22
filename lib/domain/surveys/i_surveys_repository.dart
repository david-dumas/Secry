import 'package:secry/domain/general/group_overview_row_info.dart';

abstract class ISurveysRepository {
  Future<List<GroupOverviewRowInfo>> getMostRecentSurveysForGroup({required String groupId});
}
