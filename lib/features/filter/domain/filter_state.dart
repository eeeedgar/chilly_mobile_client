part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    @Default(false) bool favoritesOnly,
    @Default(false) bool myOwnOnly,
  }) = _FilterState;
}
