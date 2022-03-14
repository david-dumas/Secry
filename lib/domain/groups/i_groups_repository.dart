import 'package:secry/domain/general/groups_and_general_about_info.dart';
import 'package:secry/domain/groups/group_chats_and_surveys_general_info.dart';
import 'package:secry/domain/groups/new_group.dart';

abstract class IGroupsRepository {
  Future<GroupsAndGeneralAboutInfo> getPrivateGroups({required int pageNumber, required int pageSize});
  Future<bool> createNewGroup(NewGroup group);
  Future<GroupChatsAndSurveysGeneralInfo?> getChatsAndSurveys({required String groupId});
}
