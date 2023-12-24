import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'create_event_cubit.freezed.dart';
part 'create_event_state.dart';

class CreateEventCubit extends Cubit<CreateEventState> {
  CreateEventCubit() : super(CreateEventState());

  // Future<void> createEvent() async {
  //   EventRepository().createEvent(
  //     CreateEventDto(
  //       state.title ?? 'title',
  //       'desc',
  //       state.point?.latitude ?? 60,
  //       state.point?.longitude ?? 60,
  //       _d(state.startDate!, state.startTime!),
  //       _d(state.endDate!, state.endTime!),
  //       [],
  //       [],
  //       UserInfo.id!,
  //     ),
  //   );
  // }
  //
  // DateTime _d(DateTime a, TimeOfDay b) {
  //   return DateTime(a.year, a.month, a.day, b.hour, b.minute);
  // }
}
