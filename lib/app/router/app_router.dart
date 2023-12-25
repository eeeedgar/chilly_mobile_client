import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';
import 'package:chilly_mobile_client/app/router/auth_guard.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Modal|Screen|Dialog,Route',
)
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
          path: '/login',
          guards: [AlreadyAuthGuard()],
        ),
        AutoRoute(
          page: RegisterRoute.page,
          path: '/register',
          guards: [AlreadyAuthGuard()],
        ),
        AutoRoute(
          page: MarkerRoute.page,
          path: '/markers',
          guards: [NeedAuthGuard()],
        ),
        AutoRoute(
          page: SpecifyActivityDetailsRoute.page,
          path: '/specify_activity_details',
          guards: [NeedAuthGuard()],
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: '/settings',
          guards: [NeedAuthGuard()],
        ),
        AutoRoute(
          page: SearchSettingsRoute.page,
          path: '/search_settings',
          guards: [NeedAuthGuard()],
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
          guards: [NeedAuthGuard()],
        ),
      ];
}
