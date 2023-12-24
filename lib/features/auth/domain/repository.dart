import 'package:chilly_mobile_client/features/auth/data/dto/request/user_login_dto.dart';
import 'package:chilly_mobile_client/features/auth/data/dto/response/user_login_response.dart';
import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';

abstract class AuthRepository {
  Future<UserLoginResponse> login(UserLoginDto dto);

  Future<UserEntity> register(UserEntity user);

  // // need token
  // Future<bool> deleteUser(String userId, String eventId);
}
