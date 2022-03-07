import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:secry/domain/general/group_overview_row_info.dart';
import 'package:secry/domain/users/i_users_repository.dart';
import 'package:secry/infrastructure/users/users_api_service.dart';
import 'package:secry/domain/users/group_user.dart';

@Singleton(as: IUsersRepository)
class UsersRepository extends IUsersRepository {
  final UsersApiService _usersApiService;

  UsersRepository(this._usersApiService) : super();

  Future<List<GroupUser>> getUsersForSearchQuery({required String searchQuery}) async {
    try {
      final response = await _usersApiService.api.getUsersToSearchInNewGroup();
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
        final List<GroupUser> groupUsersData =
            (json.decode(response.data) as List).map((json) => GroupUser.fromJsonMap(json)).toList();
        return groupUsersData;
      } else {
        return List.empty();
      }
    } catch (error) {
      print(error);
      return List.empty();
    }
  }

  Future<List<GroupUser>> getDummyUsersForAddedGroup() async {
    try {
      final response = await _usersApiService.api.getUsersAddedToNewGroup();
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
        final List<GroupUser> addedUsersData =
            (json.decode(response.data) as List).map((json) => GroupUser.fromJsonMap(json)).toList();
        return addedUsersData;
      } else {
        return List.empty();
      }
    } catch (error) {
      print(error);
      return List.empty();
    }
  }
}
