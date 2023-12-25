import 'package:chilly_mobile_client/features/activities/domain/activity_meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_cubit.freezed.dart';
part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(const FilterState());

  void setMyOwnOnly(bool value) {
    emit(state.copyWith(myOwnOnly: value));
  }

  void setFavoritesOnly(bool value) {
    emit(state.copyWith(favoritesOnly: value));
  }

  List<ActivityMeta> filter(List<ActivityMeta> data) {
    var filtered = data;
    if (state.favoritesOnly) {
      filtered = filtered.where((element) => element.isFavorite).toList();
    }
    if (state.myOwnOnly) {
      filtered = filtered.where((element) => element.isOwn).toList();
    }
    return filtered;
  }
}
