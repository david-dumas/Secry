import 'package:secry/domain/general/group_overview_row_info.dart';

abstract class IGroupsRepository {
  Future<List<GroupOverviewRowInfo>> getPrivateGroups({required String userId});
}
