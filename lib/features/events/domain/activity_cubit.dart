import 'package:chilly_mobile_client/app/models/event.dart';
import 'package:chilly_mobile_client/features/filter/domain/filter_cubit.dart';
import 'package:chilly_mobile_client/features/user/domain/user_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'activity_cubit.freezed.dart';
part 'activity_state.dart';

class ActivityCubit extends Cubit<ActivityState> {
  ActivityCubit() : super(ActivityState());

  void addActivity(AppEvent e) {
    emit(state.copyWith(activities: List.of(state.activities)..add(e)));
  }

  // @override
  // ActivityState? fromJson(Map<String, dynamic> json) {
  //   // TODO: implement fromJson
  //   throw UnimplementedError();
  // }
  //
  // @override
  // Map<String, dynamic>? toJson(ActivityState state) {
  //   // TODO: implement toJson
  //   throw UnimplementedError();
  // }
}
