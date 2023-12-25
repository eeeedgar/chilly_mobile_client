import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/features/activities/presentation/view_activity_modal.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = getIt<UserChangeNotifier>().user!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: AppTextStyle.h1,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          ListTile(
            leading: Text(
              'name',
              style: AppTextStyle.subtext,
            ),
            title: Text(
              user.name,
              style: AppTextStyle.body,
            ),
          ),
          ListTile(
            leading: Text(
              'login',
              style: AppTextStyle.subtext,
            ),
            title: Text(
              user.login,
              style: AppTextStyle.body,
            ),
          ),
          ListTile(
            leading: Text(
              'registered at',
              style: AppTextStyle.subtext,
            ),
            title: Text(
              user.registeredAt.formatE(),
              style: AppTextStyle.body,
            ),
          ),
          ListTile(
            onTap: () => appRouter.push(const ProfileEditRoute()),
            leading: const Icon(Icons.edit),
            title: const Text('Edit'),
          ),
          ListTile(
            onTap: _logout,
            leading: const Icon(Icons.logout_rounded),
            title: const Text('Log out'),
          ),
        ],
      ),
    );
  }

  void _logout() {
    getIt<UserChangeNotifier>().clear();
    appRouter.replaceAll([const LoginRoute()]);
  }
}
