import 'package:secry/domain/users/group_user.dart';
import 'package:secry/domain/groups/new_group.dart';

abstract class IUsersRepository {
  Future<List<GroupUser>> getUsersForSearchQuery({required String searchQuery, int pageNumber = 1, int pageSize = 10});
  Future<bool> createNewGroup(NewGroup group);
}
