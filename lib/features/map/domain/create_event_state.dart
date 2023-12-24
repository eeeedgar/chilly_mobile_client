part of 'create_event_cubit.dart';

@freezed
class CreateEventState with _$CreateEventState {
  factory CreateEventState({
    final LatLng? point,
    final String? address,
    final String? title,
    final DateTime? startDate,
    final DateTime? endDate,
    final TimeOfDay? startTime,
    final TimeOfDay? endTime,
  }) = _CreateEventState;
}
