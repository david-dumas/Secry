import 'package:secry/domain/users/group_user.dart';

abstract class IUsersRepository {
  Future<List<GroupUser>> getUsersForSearchQuery({required String searchQuery});
  Future<List<GroupUser>> getDummyUsersForAddedGroup(); // TODO Delete
}
