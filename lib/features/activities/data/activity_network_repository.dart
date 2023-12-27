import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/network/dio.dart';
import 'package:chilly_mobile_client/features/activities/data/add_to_favorites_dto.dart';
import 'package:chilly_mobile_client/features/activities/data/create_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/data/update_activity_dto.dart';
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
  Future<void> deleteActivity(String activityId) async {
    print('[eeee] [delete] $activityId');
    await dio.delete(
      '/events/$activityId',
    );
  }

  @override
  Future<List<ActivityMeta>> getActivities() async {
    final user = getIt<UserChangeNotifier>().user!;
    final searchSettings = getIt<SearchChangeNotifier>().settings;
    print('[eeee] [userId] ${user.id}');
    print(searchSettings.toString());
    final a = await dio.get('/events/all', queryParameters: {
      'userId': user.id,
      'onlyActive': searchSettings.onlyActive ? true : '',
      'inRange': searchSettings.inRange ? true : '',
      'minLatitude': (searchSettings.minLatitude ?? -100).round(),
      'maxLatitude': (searchSettings.maxLatitude ?? 100).round(),
      'minLongitude': (searchSettings.minLongitude ?? -100).round(),
      'maxLongitude': (searchSettings.maxLongitude ?? 100).round(),
      'tags': searchSettings.searchByTagText,
    }).then((value) => (value.data['events'] as List)
        .map((x) => ActivityMeta.fromJson(x))
        .toList());
    return a;
  }

  @override
  Future<ActivityEntity> getActivity(String activityId) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateActivity(String activityId, UpdateActivityDto dto) async {
    print('[eeee] ${activityId}');
    print('[eeee] ${dto.toJson()}');
    await dio.patch('/events/$activityId', data: dto.toJson());
  }

  @override
  Future<List<ActivityMeta>> getFavoriteActivities() async {
    // todo: check
    final user = getIt<UserChangeNotifier>().user!;
    return await dio.get('/users/${user.id}/favorites', queryParameters: {
      'type': 'Event',
    }).then((value) => (value.data['events'] as List)
        .map((x) => ActivityMeta.fromJson(x))
        .toList());
  }

  @override
  Future<void> addToFavorites(AddToFavoritesDto dto) async {
    final user = getIt<UserChangeNotifier>().user!;
    await dio.post('/users/${user.id}/favorites', data: dto.toJson());
  }

  @override
  Future<void> removeFromFavorites(String activityId) async {
    final user = getIt<UserChangeNotifier>().user!;
    await dio.delete(
      '/users/${user.id}/favorites',
      queryParameters: {
        'favoriteId': activityId,
      },
    );
  }
}
