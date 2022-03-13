import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/general/groups_and_general_about_info.dart';
import 'package:secry/domain/groups/i_groups_repository.dart';
import 'package:secry/infrastructure/groups/groups_api_service.dart';

@Singleton(as: IGroupsRepository)
class GroupsRepository extends IGroupsRepository {
  final GroupsApiService _groupsApiService;

  GroupsRepository(this._groupsApiService) : super();

  @override
  Future<GroupsAndGeneralAboutInfo> getPrivateGroups({required String userId}) async {
    try {
      final response = await _groupsApiService.api.getPrivateGroups();
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
        final mappedData = Map<String, dynamic>.from(response.data);

        if (mappedData.containsKey('groups')) {
          List<dynamic> groups = mappedData["groups"];
          final List<GroupOverviewRowInfo> groupOverviewRowsData =
              (groups).map((json) => GroupOverviewRowInfo.fromJsonMap(json)).toList();
          final int totalAmountOfGroups =
              mappedData.containsKey('total') ? (mappedData['total'] != null ? mappedData['total'] : 0) : 0;

          final groupsAndGeneralAboutInfo =
              GroupsAndGeneralAboutInfo(totalAmountOfGroups: totalAmountOfGroups, groups: groupOverviewRowsData);

          return groupsAndGeneralAboutInfo;
        } else {
          return GroupsAndGeneralAboutInfo(totalAmountOfGroups: 0, groups: []);
        }
      } else {
        return GroupsAndGeneralAboutInfo(totalAmountOfGroups: 0, groups: []);
      }
    } catch (error) {
      // TODO log error
      return GroupsAndGeneralAboutInfo(totalAmountOfGroups: 0, groups: []);
    }
  }
}
