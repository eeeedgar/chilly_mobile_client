import 'package:chilly_mobile_client/app/di/config.dart';
import 'package:chilly_mobile_client/app/di/user_change_notifier.dart';
import 'package:chilly_mobile_client/features/activities/data/create_activity_dto.dart';
import 'package:chilly_mobile_client/features/activities/domain/activity_entity.dart';
import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart';
import 'package:chilly_mobile_client/features/activities/domain/repository.dart';
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
  }

  Future<void> fetchActivities() async {
    final activitiesMeta = await getIt<ActivityRepository>().getActivities();
    emit(state.copyWith(
        activities: activitiesMeta.map((e) => e.event).toList()));
  }
}
