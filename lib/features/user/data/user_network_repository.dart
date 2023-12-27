import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/network/dio.dart';
import 'package:chilly_mobile_client/features/user/data/update_user_dto.dart';
import 'package:chilly_mobile_client/features/user/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';
import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class UserNetworkRepository extends UserRepository {
  @override
  Future<UserEntity> getUser(String userId) async {
    print('[eeee] [1] $userId');
    final a = await dio.get('/users/$userId').then(
          (value) => UserEntity.fromJson(value.data),
        );
    print('[eeee] [2] ${a.toJson()}');
    return a;
  }

  @override
  Future<void> updateUser(UpdateUserDto dto) async {
    final user = getIt<UserChangeNotifier>().user!;
    await dio.patch('/users/${user.id}', data: dto.toJson());
  }

  @override
  Future<bool> deleteUser(int userId) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }
}
