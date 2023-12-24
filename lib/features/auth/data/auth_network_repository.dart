import 'package:chilly_mobile_client/app/network/dio.dart';
import 'package:chilly_mobile_client/features/auth/data/dto/request/user_login_dto.dart';
import 'package:chilly_mobile_client/features/auth/data/dto/response/user_login_response.dart';
import 'package:chilly_mobile_client/features/auth/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';

class AuthNetworkRepository extends AuthRepository {
  @override
  Future<UserLoginResponse> login(UserLoginDto dto) async {
    return await dio.put('/auth/login',
        data: {'login': dto.login, 'password': dto.password}).then(
      (value) => UserLoginResponse.fromJson(value.data),
    );
  }

  @override
  Future<UserEntity> register(UserEntity user) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
