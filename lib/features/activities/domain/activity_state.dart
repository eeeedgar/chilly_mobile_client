part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  ActivityState._();

  factory ActivityState({
    @Default(<ActivityMeta>[]) List<ActivityMeta> activities,
  }) = _ActivityState;
}
