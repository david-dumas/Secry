import 'package:secry/domain/general/group_overview_row_info.dart';

abstract class IChatsRepository {
  Future<List<GroupOverviewRowInfo>> getMostRecentChatsForGroup({required String groupId});
}
