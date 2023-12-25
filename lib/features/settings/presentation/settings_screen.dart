import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/common/styles/app_text_style.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/main.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: AppTextStyle.h1,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          ListTile(
            onTap: () => appRouter.push(const SearchSettingsRoute()),
            title: Text(
              'Search',
              style: AppTextStyle.body,
            ),
          ),
          ListTile(
            onTap: () => appRouter.push(const ProfileRoute()),
            title: Text(
              'Profile',
              style: AppTextStyle.body,
            ),
          ),
        ],
      ),
    );
  }
}
