import 'package:secry/domain/auth/user.dart';

abstract class IAuthenticationInterface {
  dynamic createNewUser(User user, String password);
  Future resetPassword({required String email});
}
