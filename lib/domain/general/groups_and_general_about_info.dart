import 'package:secry/domain/general/pagination_info.dart';

import 'group_overview_row_info.dart';

class GroupsAndGeneralAboutInfo {
  final PaginationInfo? paginationInfo;
  final List<GroupOverviewRowInfo> groups;

  GroupsAndGeneralAboutInfo({required this.paginationInfo, required this.groups});
}
