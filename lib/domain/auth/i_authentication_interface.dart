import 'package:secry/domain/auth/user.dart';

abstract class IAuthenticationInterface {
  void createNewUser(User user, String password);
}
