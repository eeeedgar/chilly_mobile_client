part of 'filter_cubit.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    String? searchText,
    @Default(false) bool favoritesOnly,
  }) = _FilterState;
}
