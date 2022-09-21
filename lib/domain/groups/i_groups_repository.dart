import 'package:retrofit/retrofit.dart';

import 'package:secry/domain/general/groups_and_general_about_info.dart';
import 'package:secry/domain/groups/group_chats_and_surveys_general_info.dart';
import 'package:secry/domain/groups/new_group.dart';

import 'package:secry/domain/general/group_overview_row_info.dart';

abstract class IGroupsRepository {
  Future<List<GroupOverviewRowInfo>> getHomepageGroupsDummyData();
  Future<GroupChatsAndSurveysGeneralInfo?> getHomepageGroupOverviewDummyData();
  Future<GroupsAndGeneralAboutInfo> getPrivateGroups({required int pageNumber, required int pageSize});
  Future<bool> createNewGroup(NewGroup group);
  Future<GroupChatsAndSurveysGeneralInfo?> getChatsAndSurveys({required String groupId});
}
