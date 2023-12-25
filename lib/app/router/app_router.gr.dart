// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart'
    as _i10;
import 'package:chilly_mobile_client/features/activities/presentation/specify_activity_details_screen.dart'
    as _i7;
import 'package:chilly_mobile_client/features/auth/presentation/login_page.dart'
    as _i1;
import 'package:chilly_mobile_client/features/auth/presentation/register_page.dart'
    as _i4;
import 'package:chilly_mobile_client/features/map/presentation/marker_page.dart'
    as _i2;
import 'package:chilly_mobile_client/features/profile/presentation/profile_screen.dart'
    as _i3;
import 'package:chilly_mobile_client/features/search/presentation/search_settings_screen.dart'
    as _i5;
import 'package:chilly_mobile_client/features/settings/presentation/settings_screen.dart'
    as _i6;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    MarkerRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i2.MarkerScreen()),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterScreen(),
      );
    },
    SearchSettingsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchSettingsScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SettingsScreen(),
      );
    },
    SpecifyActivityDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SpecifyActivityDetailsRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SpecifyActivityDetailsScreen(
          key: args.key,
          createActivityEntity: args.createActivityEntity,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MarkerScreen]
class MarkerRoute extends _i8.PageRouteInfo<void> {
  const MarkerRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MarkerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarkerRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterScreen]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SearchSettingsScreen]
class SearchSettingsRoute extends _i8.PageRouteInfo<void> {
  const SearchSettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SearchSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchSettingsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SettingsScreen]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SpecifyActivityDetailsScreen]
class SpecifyActivityDetailsRoute
    extends _i8.PageRouteInfo<SpecifyActivityDetailsRouteArgs> {
  SpecifyActivityDetailsRoute({
    _i9.Key? key,
    required _i10.CreateActivityEntity createActivityEntity,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          SpecifyActivityDetailsRoute.name,
          args: SpecifyActivityDetailsRouteArgs(
            key: key,
            createActivityEntity: createActivityEntity,
          ),
          initialChildren: children,
        );

  static const String name = 'SpecifyActivityDetailsRoute';

  static const _i8.PageInfo<SpecifyActivityDetailsRouteArgs> page =
      _i8.PageInfo<SpecifyActivityDetailsRouteArgs>(name);
}

class SpecifyActivityDetailsRouteArgs {
  const SpecifyActivityDetailsRouteArgs({
    this.key,
    required this.createActivityEntity,
  });

  final _i9.Key? key;

  final _i10.CreateActivityEntity createActivityEntity;

  @override
  String toString() {
    return 'SpecifyActivityDetailsRouteArgs{key: $key, createActivityEntity: $createActivityEntity}';
  }
}
