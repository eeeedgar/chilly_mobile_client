import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/network/dio.dart';
import 'package:chilly_mobile_client/features/activities/data/create_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_entity.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_meta.dart';
import 'package:chilly_mobile_client/features/activities/domain/repository.dart';
import 'package:chilly_mobile_client/features/search/domain/search_change_notifier.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';

class ActivityNetworkRepository extends ActivityRepository {
  @override
  Future<void> createActivity(CreateActivityDto dto) async {
    await dio.post(
      '/events',
      data: dto.toJson(),
    );
  }

  @override
  Future<void> deleteActivity(String activityId) {
    // TODO: implement deleteActivity
    throw UnimplementedError();
  }

  @override
  Future<List<ActivityMeta>> getActivities() async {
    final user = getIt<UserChangeNotifier>().user!;
    final searchSettings = getIt<SearchChangeNotifier>().settings;
    print(searchSettings.toString());
    return await dio.get('/events/all', queryParameters: {
      'userId': user.id,
      'onlyActive': searchSettings.onlyActive ? true : '',
      'inRange': searchSettings.inRange ? true : '',
      'minLatitude': (searchSettings.minLatitude ?? -100).round(),
      'maxLatitude': (searchSettings.maxLatitude ?? 100).round(),
      'minLongitude': (searchSettings.minLongitude ?? -100).round(),
      'maxLongitude': (searchSettings.maxLongitude ?? 100).round(),
    }).then((value) => (value.data['events'] as List)
        .map((x) => ActivityMeta.fromJson(x))
        .toList());
  }

  @override
  Future<ActivityEntity> getActivity(String activityId) {
    // TODO: implement getActivity
    throw UnimplementedError();
  }

  @override
  Future<void> updateActivity(String activityId) {
    // TODO: implement updateActivity
    throw UnimplementedError();
  }
}
