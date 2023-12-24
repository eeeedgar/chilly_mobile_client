part of 'activity_cubit.dart';

@freezed
class ActivityState with _$ActivityState {
  ActivityState._();

  factory ActivityState({
    @Default(<AppEvent>[]) List<AppEvent> activities,
  }) = _ActivityState;

  List<AppEvent> applyFilter(FilterState filterState, UserCubit userCubit) {
    var filtered = List<AppEvent>.from(activities);

    if (filterState.favoritesOnly) {
      filtered = filtered
          .where((element) => userCubit.isInFavorites(element.id!))
          .toList();
    }

    if (filterState.searchText != null && filterState.searchText!.isNotEmpty) {
      filtered = filtered
          .where((element) =>
              element.name!.contains(filterState.searchText!) ||
              element.description!.contains(filterState.searchText!) ||
              element.tags!.any((t) => t.contains(filterState.searchText!)))
          .toList();
    }

    return filtered;
  }
}
