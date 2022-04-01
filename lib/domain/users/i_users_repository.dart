import 'package:secry/constants.dart';
import 'package:secry/domain/users/users_and_pagination_info.dart';

abstract class IUsersRepository {
  Future<UsersAndPaginationInfo> getUsersAndPaginationInfoForSearchQuery(
      {required String searchQuery, int pageNumber = 1, int pageSize = defaultPageSize});
}
