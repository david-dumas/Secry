import 'general_group_info.dart';
import 'group_overview_row_info.dart';

class GroupsAndGeneralAboutInfo {
  final GeneralGroupInfo? generalInfo;
  final List<GroupOverviewRowInfo> groups;

  GroupsAndGeneralAboutInfo({required this.generalInfo, required this.groups});
}
