import 'package:secry/domain/general/groups_and_general_about_info.dart';

abstract class IGroupsRepository {
  Future<GroupsAndGeneralAboutInfo> getPrivateGroups({required String userId});
}
