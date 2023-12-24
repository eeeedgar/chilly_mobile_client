import 'package:auto_route/auto_route.dart';
import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/di/user_change_notifier.dart';
import 'package:chilly_mobile_client/app/router/app_router.gr.dart';

class NeedAuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final user = getIt<UserChangeNotifier>().user;

    if (user != null) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}

class AlreadyAuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final user = getIt<UserChangeNotifier>().user;

    if (user != null) {
      router.push(const MarkerRoute());
    } else {
      resolver.next(true);
    }
  }
}
