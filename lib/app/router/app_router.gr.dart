// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:chilly_mobile_client/app/models/event.dart' as _i8;
import 'package:chilly_mobile_client/features/activity/presentation/specify_activity_details_screen.dart'
    as _i5;
import 'package:chilly_mobile_client/features/auth/presentation/login_page.dart'
    as _i1;
import 'package:chilly_mobile_client/features/auth/presentation/register_page.dart'
    as _i4;
import 'package:chilly_mobile_client/features/map/presentation/marker_page.dart'
    as _i2;
import 'package:chilly_mobile_client/features/profile/presentation/profile_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i7;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    MarkerRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MarkerScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RegisterScreen(),
      );
    },
    SpecifyActivityDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SpecifyActivityDetailsRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SpecifyActivityDetailsScreen(
          key: args.key,
          event: args.event,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MarkerScreen]
class MarkerRoute extends _i6.PageRouteInfo<void> {
  const MarkerRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MarkerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MarkerRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RegisterScreen]
class RegisterRoute extends _i6.PageRouteInfo<void> {
  const RegisterRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SpecifyActivityDetailsScreen]
class SpecifyActivityDetailsRoute
    extends _i6.PageRouteInfo<SpecifyActivityDetailsRouteArgs> {
  SpecifyActivityDetailsRoute({
    _i7.Key? key,
    required _i8.AppEvent event,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          SpecifyActivityDetailsRoute.name,
          args: SpecifyActivityDetailsRouteArgs(
            key: key,
            event: event,
          ),
          initialChildren: children,
        );

  static const String name = 'SpecifyActivityDetailsRoute';

  static const _i6.PageInfo<SpecifyActivityDetailsRouteArgs> page =
      _i6.PageInfo<SpecifyActivityDetailsRouteArgs>(name);
}

class SpecifyActivityDetailsRouteArgs {
  const SpecifyActivityDetailsRouteArgs({
    this.key,
    required this.event,
  });

  final _i7.Key? key;

  final _i8.AppEvent event;

  @override
  String toString() {
    return 'SpecifyActivityDetailsRouteArgs{key: $key, event: $event}';
  }
}