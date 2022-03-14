import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/general_group_info.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/general/groups_and_general_about_info.dart';
import 'package:secry/domain/groups/i_groups_repository.dart';
import 'package:secry/infrastructure/groups/groups_api_service.dart';
import 'package:secry/util/network_and_requests/response_util.dart';

@Singleton(as: IGroupsRepository)
class GroupsRepository extends IGroupsRepository {
  final GroupsApiService _groupsApiService;

  GroupsRepository(this._groupsApiService) : super();

  @override
  Future<GroupsAndGeneralAboutInfo> getPrivateGroups({required int pageNumber, required int pageSize}) async {
    try {
      final token = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (token == null && token != "") {
        // TODO handle not logged error and show on homepage
        return GroupsAndGeneralAboutInfo(generalInfo: null, groups: []);
      }
      final bearerToken = "Bearer $token";

      final response = await _groupsApiService.api.getPrivateGroups(bearerToken, pageNumber, pageSize);

      if (response.isSuccessful) {
        final mappedData = Map<String, dynamic>.from(response.data);

        if (mappedData.containsKey('items')) {
          List<dynamic> groups = mappedData["items"];
          final List<GroupOverviewRowInfo> groupOverviewRowsData =
              (groups).map((json) => GroupOverviewRowInfo.fromJsonMap(json)).toList();

          final int pageNumber = mappedData.containsKey('pageNumber')
              ? (mappedData['pageNumber'] != null ? mappedData['pageNumber'] : 1)
              : 1;
          final int totalPages = mappedData.containsKey('totalPages')
              ? (mappedData['totalPages'] != null ? mappedData['totalPages'] : 1)
              : 1;
          final int totalAmountOfGroups = mappedData.containsKey('totalCount')
              ? (mappedData['totalCount'] != null ? mappedData['totalCount'] : 10)
              : 10;
          final bool hasPreviousPage = mappedData.containsKey('hasPreviousPage')
              ? (mappedData['hasPreviousPage'] != null ? mappedData['hasPreviousPage'] : false)
              : false;
          final bool hasNextPage = mappedData.containsKey('hasNextPage')
              ? (mappedData['hasNextPage'] != null ? mappedData['hasNextPage'] : false)
              : false;
          final generalGroupInfo = GeneralGroupInfo(
              pageNumber: pageNumber,
              totalPages: totalPages,
              totalNumberOfGroups: totalAmountOfGroups,
              hasPreviousPage: hasPreviousPage,
              hasNextPage: hasNextPage);

          final groupsAndGeneralAboutInfo =
              GroupsAndGeneralAboutInfo(generalInfo: generalGroupInfo, groups: groupOverviewRowsData);

          return groupsAndGeneralAboutInfo;
        } else {
          return GroupsAndGeneralAboutInfo(generalInfo: null, groups: []);
        }
      } else {
        return GroupsAndGeneralAboutInfo(generalInfo: null, groups: []);
      }
    } catch (error) {
      // TODO log error
      return GroupsAndGeneralAboutInfo(generalInfo: null, groups: []);
    }
  }
}
