import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/constants.dart';
import 'package:secry/domain/users/i_users_repository.dart';
import 'package:secry/domain/users/users_and_pagination_info.dart';
import 'package:secry/infrastructure/users/users_api_service.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/domain/general/pagination_info.dart';
import 'package:secry/util/network_and_requests/response_util.dart';

@Singleton(as: IUsersRepository)
class UsersRepository extends IUsersRepository {
  final UsersApiService _usersApiService;

  UsersRepository(this._usersApiService) : super();

  Future<UsersAndPaginationInfo> getUsersAndPaginationInfoForSearchQuery(
      {required String searchQuery, int pageNumber = 1, int pageSize = defaultPageSize}) async {
    try {
      final token = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (token == null && token != "") {
        return UsersAndPaginationInfo(users: [], paginationInfo: null);
      }

      final bearerToken = "Bearer $token";

      final response = await _usersApiService.api.getUsersToSearchInNewGroup(
        bearerToken,
        searchQuery,
        pageNumber,
        pageSize,
      );

      if (response.isSuccessful) {
        final mappedData = Map<String, dynamic>.from(response.data);

        if (mappedData.containsKey('items')) {
          List<dynamic> userList = mappedData["items"];
          final List<GroupUser> users = (userList).map((json) => GroupUser.fromJsonMap(json)).toList();

          // TODO use json.fromFactoryMap instead of all single map functions
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
          final paginationInfo = PaginationInfo(
              pageNumber: pageNumber,
              pageSize: defaultPageSize,
              totalPages: totalPages,
              totalCount: totalAmountOfGroups,
              hasPreviousPage: hasPreviousPage,
              hasNextPage: hasNextPage);

          return UsersAndPaginationInfo(users: users, paginationInfo: paginationInfo);
        } else {
          return UsersAndPaginationInfo(users: [], paginationInfo: null);
        }
      } else {
        return UsersAndPaginationInfo(users: [], paginationInfo: null);
      }
    } catch (error) {
      // TODO log error
      return UsersAndPaginationInfo(users: [], paginationInfo: null);
    }
  }
}
