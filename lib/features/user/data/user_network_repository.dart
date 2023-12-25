import 'package:chilly_mobile_client/app/network/dio.dart';
import 'package:chilly_mobile_client/features/user/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserNetworkRepository extends UserRepository {
  @override
  Future<UserEntity> getUser(String userId) async {
    return await dio.get('/users/$userId').then(
          (value) => UserEntity.fromJson(value.data),
        );
  }

  @override
  Future<UserEntity> updateUser(UserEntity editedUser) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteUser(int userId) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }
}
