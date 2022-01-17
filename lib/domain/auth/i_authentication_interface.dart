import 'package:secry/domain/auth/user.dart';

abstract class IAuthenticationInterface {
  dynamic createNewUser(User user, String password);
  Future<bool> resetPassword({required String email});
}
