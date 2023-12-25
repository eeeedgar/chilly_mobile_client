import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';

abstract class UserRepository {
  // need token
  Future<UserEntity> getUser(String userId);

  // need token
  Future<UserEntity> updateUser(UserEntity editedUser);

  // need token
  Future<bool> deleteUser(int userId);
}
