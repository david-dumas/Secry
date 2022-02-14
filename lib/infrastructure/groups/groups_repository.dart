import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/groups/i_groups_repository.dart';
import 'package:secry/infrastructure/groups/groups_api_service.dart';

@Singleton(as: IGroupsRepository)
class GroupsRepository extends IGroupsRepository {
  final GroupsApiService _groupsApiService;

  GroupsRepository(this._groupsApiService) : super();

  @override
  Future<List<GroupOverviewRowInfo>> getPrivateGroups({required String userId}) async {
    try {
      var body = jsonEncode({
        'userId': '$userId',
      });

      final response = await _groupsApiService.api.getPrivateGroups();
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
        final List<GroupOverviewRowInfo> groupOverviewRowsData =
            (json.decode(response.data) as List).map((json) => GroupOverviewRowInfo.fromJsonMap(json)).toList();
        return groupOverviewRowsData;
      } else {
        return List.empty();
      }
    } catch (error) {
      print(error);
      return List.empty();
    }
  }
}
