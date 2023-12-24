part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default(<int>[]) List<int> favoriteEventsIds,
  }) = _UserState;
}
