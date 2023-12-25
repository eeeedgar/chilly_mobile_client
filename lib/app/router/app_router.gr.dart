// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:chilly_mobile_client/features/activities/domain/activity_entity.dart'
    as _i12;
import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart'
    as _i13;
import 'package:chilly_mobile_client/features/activities/presentation/edit_activity_screen.dart'
    as _i1;
import 'package:chilly_mobile_client/features/activities/presentation/specify_activity_details_screen.dart'
    as _i9;
import 'package:chilly_mobile_client/features/auth/presentation/login_page.dart'
    as _i2;
import 'package:chilly_mobile_client/features/auth/presentation/register_page.dart'
    as _i6;
import 'package:chilly_mobile_client/features/map/presentation/marker_page.dart'
    as _i3;
import 'package:chilly_mobile_client/features/profile/presentation/profile_edit_screen.dart'
    as _i4;
import 'package:chilly_mobile_client/features/profile/presentation/profile_screen.dart'
    as _i5;
import 'package:chilly_mobile_client/features/search/presentation/search_settings_screen.dart'
    as _i7;
import 'package:chilly_mobile_client/features/settings/presentation/settings_screen.dart'
    as _i8;
import 'package:flutter/material.dart' as _i11;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    ActivityEditRoute.name: (routeData) {
      final args = routeData.argsAs<ActivityEditRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ActivityEditScreen(
          key: args.key,
          activityEntity: args.activityEntity,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen(),
      );
    },
    MarkerRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.WrappedRoute(child: const _i3.MarkerScreen()),
      );
    },
    ProfileEditRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ProfileEditScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RegisterScreen(),
      );
    },
    SearchSettingsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SearchSettingsScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingsScreen(),
      );
    },
    SpecifyActivityDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SpecifyActivityDetailsRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.SpecifyActivityDetailsScreen(
          key: args.key,
          createActivityEntity: args.createActivityEntity,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ActivityEditScreen]
class ActivityEditRoute extends _i10.PageRouteInfo<ActivityEditRouteArgs> {
  ActivityEditRoute({
    _i11.Key? key,
    required _i12.ActivityEntity activityEntity,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          ActivityEditRoute.name,
          args: ActivityEditRouteArgs(
            key: key,
            activityEntity: activityEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'ActivityEditRoute';

  static const _i10.PageInfo<ActivityEditRouteArgs> page =
      _i10.PageInfo<ActivityEditRouteArgs>(name);
}

class ActivityEditRouteArgs {
  const ActivityEditRouteArgs({
    this.key,
    required this.activityEntity,
  });

  final _i11.Key? key;

  final _i12.ActivityEntity activityEntity;

  @override
  String toString() {
    return 'ActivityEditRouteArgs{key: $key, activityEntity: $activityEntity}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MarkerScreen]
class MarkerRoute extends _i10.PageRouteInfo<void> {
  const MarkerRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MarkerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarkerRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ProfileEditScreen]
class ProfileEditRoute extends _i10.PageRouteInfo<void> {
  const ProfileEditRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileEditRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileEditRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RegisterScreen]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute({List<_i10.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SearchSettingsScreen]
class SearchSettingsRoute extends _i10.PageRouteInfo<void> {
  const SearchSettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SearchSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchSettingsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingsScreen]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute({List<_i10.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SpecifyActivityDetailsScreen]
class SpecifyActivityDetailsRoute
    extends _i10.PageRouteInfo<SpecifyActivityDetailsRouteArgs> {
  SpecifyActivityDetailsRoute({
    _i11.Key? key,
    required _i13.CreateActivityEntity createActivityEntity,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          SpecifyActivityDetailsRoute.name,
          args: SpecifyActivityDetailsRouteArgs(
            key: key,
            createActivityEntity: createActivityEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'SpecifyActivityDetailsRoute';

  static const _i10.PageInfo<SpecifyActivityDetailsRouteArgs> page =
      _i10.PageInfo<SpecifyActivityDetailsRouteArgs>(name);
}

class SpecifyActivityDetailsRouteArgs {
  const SpecifyActivityDetailsRouteArgs({
    this.key,
    required this.createActivityEntity,
  });

  final _i11.Key? key;

  final _i13.CreateActivityEntity createActivityEntity;

  @override
  String toString() {
    return 'SpecifyActivityDetailsRouteArgs{key: $key, createActivityEntity: $createActivityEntity}';
  }
}
