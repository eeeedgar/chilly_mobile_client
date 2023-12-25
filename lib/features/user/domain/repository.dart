import 'package:chilly_mobile_client/features/user/data/update_user_dto.dart';
import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';

abstract class UserRepository {
  // need token
  Future<UserEntity> getUser(String userId);

  // need token
  Future<void> updateUser(UpdateUserDto dto);

  // need token
  Future<bool> deleteUser(int userId);
}
