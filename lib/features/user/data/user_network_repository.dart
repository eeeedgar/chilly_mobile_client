import 'package:chilly_mobile_client/app/network/dio.dart';
import 'package:chilly_mobile_client/features/user/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserNetworkRepository extends UserRepository {
  @override
  Future<bool> deleteUser(int id) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> getUser(String id) async {
    return await dio.get('/users/$id').then(
          (value) => UserEntity.fromJson(value.data),
        );
  }

  @override
  Future<UserEntity> updateUser(UserEntity editedUser) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
