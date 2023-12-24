import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_cubit.freezed.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState());

  void addToFavorites(int id) {
    emit(state.copyWith(
        favoriteEventsIds: List.of(state.favoriteEventsIds)..add(id)));
  }

  void removeFromFavorites(int id) {
    emit(state.copyWith(
        favoriteEventsIds: List.of(state.favoriteEventsIds)
          ..removeWhere((e) => e == id)));
  }

  bool isInFavorites(int id) {
    return state.favoriteEventsIds.any((element) => element == id);
  }
}
