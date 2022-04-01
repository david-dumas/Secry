import 'package:secry/domain/general/pagination_info.dart';
import 'package:secry/domain/users/group_user.dart';

class UsersAndPaginationInfo {
  final List<GroupUser> users;
  final PaginationInfo? paginationInfo;

  UsersAndPaginationInfo({required this.users, required this.paginationInfo});
}
