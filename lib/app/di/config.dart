import 'package:chilly_mobile_client/features/activities/data/activity_network_repository.dart';
import 'package:chilly_mobile_client/features/activities/domain/repository.dart';
import 'package:chilly_mobile_client/features/auth/data/auth_network_repository.dart';
import 'package:chilly_mobile_client/features/auth/domain/repository.dart';
import 'package:chilly_mobile_client/features/search/domain/search_change_notifier.dart';
import 'package:chilly_mobile_client/features/user/data/user_network_repository.dart';
import 'package:chilly_mobile_client/features/user/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void configDi() {
  getIt.registerSingleton<UserChangeNotifier>(
      UserChangeNotifierImplementation(),
      signalsReady: true);
  getIt.registerSingleton<SearchChangeNotifier>(
      SearchChangeNotifierImplementation(),
      signalsReady: true);
  getIt.registerSingleton<AuthRepository>(AuthNetworkRepository(),
      signalsReady: true);
  getIt.registerSingleton<UserRepository>(UserNetworkRepository(),
      signalsReady: true);
  getIt.registerSingleton<ActivityRepository>(ActivityNetworkRepository(),
      signalsReady: true);
}
