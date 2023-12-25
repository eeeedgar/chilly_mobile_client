import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/features/auth/domain/auth_cubit.dart';
import 'package:chilly_mobile_client/features/user/data/update_user_dto.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  final _name = TextEditingController();
  final _login = TextEditingController();

  @override
  void initState() {
    super.initState();
    final user = getIt<UserChangeNotifier>().user!;
    _name.text = user.name;
    _login.text = user.login;
  }

  @override
  Widget build(BuildContext context) {
    final user = getIt<UserChangeNotifier>().user!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: AppTextStyle.h1,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Form(
              child: Column(
            children: [
              TextFormField(
                controller: _name,
                decoration: const InputDecoration(
                  labelText: 'name',
                ),
              ),
              TextFormField(
                controller: _login,
                decoration: const InputDecoration(
                  labelText: 'login',
                ),
              ),
            ],
          )),
          ElevatedButton(
            onPressed: () async => context.read<AuthCubit>().update(
                  UpdateUserDto(
                    user.name != _name.text ? _name.text : null,
                    user.login != _login.text ? _login.text : null,
                  ),
                ),
            child: Text(
              'Apply'.toUpperCase(),
              style: AppTextStyle.button,
            ),
          ),
        ],
      ),
    );
  }
}
