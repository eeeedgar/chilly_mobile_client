import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/features/activities/data/add_to_favorites_dto.dart';
import 'package:chilly_mobile_client/features/activities/data/create_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/data/update_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_meta.dart';
import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart';
import 'package:chilly_mobile_client/features/activities/domain/repository.dart';
import 'package:chilly_mobile_client/features/user/domain/user_change_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'activity_cubit.freezed.dart';
part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(ActivityState());

  Future<void> createActivity(CreateActivityEntity activity) async {
    final dto = CreateActivityDto.fromEntityWithUserId(
      activity,
      getIt<UserChangeNotifier>().user!.id,
    );
    await getIt<ActivityRepository>().createActivity(dto);
    fetchActivities();
  }

  Future<void> fetchActivities() async {
    final activitiesMeta = await getIt<ActivityRepository>().getActivities();
    emit(state.copyWith(activities: activitiesMeta));
  }

  Future<void> addToFavorites(String id) async {
    await getIt<ActivityRepository>().addToFavorites(
      AddToFavoritesDto.fromActivityId(id),
    );
    await fetchActivities();
  }

  Future<void> removeFromFavorites(String id) async {
    await getIt<ActivityRepository>().removeFromFavorites(id);
    await fetchActivities();
  }

  Future<void> deleteActivity(String activityId) async {
    await getIt<ActivityRepository>().deleteActivity(activityId);
    await fetchActivities();
  }

  Future<void> editActivity(String id, UpdateActivityDto dto) async {
    await getIt<ActivityRepository>().updateActivity(id, dto);
    await fetchActivities();
  }
}
