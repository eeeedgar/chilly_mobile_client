part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  ActivityState._();

  factory ActivityState({
    @Default(<ActivityEntity>[]) List<ActivityEntity> activities,
  }) = _ActivityState;
}
