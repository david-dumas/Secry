import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:secry/domain/users/i_users_repository.dart';
import 'package:secry/infrastructure/users/users_api_service.dart';
import 'package:secry/domain/users/group_user.dart';
import 'package:secry/domain/groups/new_group.dart';
import 'package:secry/util/network_and_requests/response_util.dart';

@Singleton(as: IUsersRepository)
class UsersRepository extends IUsersRepository {
  final UsersApiService _usersApiService;

  UsersRepository(this._usersApiService) : super();

  Future<List<GroupUser>> getUsersForSearchQuery(
      {required String searchQuery, int pageNumber = 1, int pageSize = 10}) async {
    try {
      final token = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (token == null && token != "") {
        return List.empty();
      }

      final bearerToken = "Bearer $token";

      final response = await _usersApiService.api.getUsersToSearchInNewGroup(
        bearerToken,
        searchQuery,
        pageNumber,
        pageSize,
      );
      final responseStatusCode = response.response.statusCode;

      if (responseStatusCode == 200) {
        final mappedData = Map<String, dynamic>.from(response.data);

        if (mappedData.containsKey('items')) {
          List<dynamic> userList = mappedData["items"];
          final List<GroupUser> users = (userList).map((json) => GroupUser.fromJsonMap(json)).toList();

          return users;
        } else {
          return List.empty();
        }
      } else {
        return List.empty();
      }
    } catch (error) {
      // TODO log error
      return List.empty();
    }
  }

  Future<bool> createNewGroup(NewGroup group) async {
    try {
      final token = await FirebaseAuth.instance.currentUser?.getIdToken();
      if (token == null && token != "") {
        return false;
      }

      final bearerToken = "Bearer $token";
      final body = jsonEncode(group.toJson());

      final response = await _usersApiService.api.createNewGroup(bearerToken, body);

      if (response.isSuccessful) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      // TODO log error
      return false;
    }
  }
}
