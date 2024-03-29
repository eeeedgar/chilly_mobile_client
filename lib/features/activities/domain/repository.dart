import 'package:chilly_mobile_client/features/activities/data/add_to_favorites_dto.dart';
import 'package:chilly_mobile_client/features/activities/data/create_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/data/update_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_entity.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_meta.dart';

abstract class ActivityRepository {
  // need token
  Future<void> createActivity(CreateActivityDto dto);

  // need token
  Future<List<ActivityMeta>> getActivities();

  // need token
  Future<ActivityEntity> getActivity(String activityId);

  // need token
  Future<void> updateActivity(String activityId, UpdateActivityDto dto);

  // need token
  Future<void> deleteActivity(String activityId);

  // need token
  Future<List<ActivityMeta>> getFavoriteActivities();

  Future<void> addToFavorites(AddToFavoritesDto dto);

  Future<void> removeFromFavorites(String activityId);
}
