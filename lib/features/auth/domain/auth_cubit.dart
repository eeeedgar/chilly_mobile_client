import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/network/dio.dart';
import 'package:chilly_mobile_client/features/auth/data/dto/request/user_login_dto.dart';
import 'package:chilly_mobile_client/features/auth/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';
import 'package:chilly_mobile_client/features/user/domain/user_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState());

  Future<void> login(UserLoginDto dto) async {
    final loginResponse = await getIt<AuthRepository>().login(dto);
    dio.options.headers['Authorization'] =
        'Bearer ${loginResponse.accessToken}';

    print(loginResponse.accessToken);

    final user = await getIt<UserRepository>().getUser(loginResponse.user.id);
    getIt<UserChangeNotifier>().setUser(user);
  }

  void register() {}

  void logout() {}
}
