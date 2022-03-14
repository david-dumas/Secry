import 'package:secry/domain/users/group_user.dart';

abstract class IUsersRepository {
  Future<List<GroupUser>> getUsersForSearchQuery({required String searchQuery, int pageNumber = 1, int pageSize = 10});
}
