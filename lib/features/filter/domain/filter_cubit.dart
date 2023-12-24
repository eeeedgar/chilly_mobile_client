import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_cubit.freezed.dart';
part 'filter_state.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(const FilterState());

  void setSearchText(String text) {
    emit(state.copyWith(searchText: text));
  }

  void setFavoritesOnly(bool value) {
    emit(state.copyWith(favoritesOnly: value));
  }
}
