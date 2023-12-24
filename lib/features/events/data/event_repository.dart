import 'package:chilly_mobile_client/features/events/data/create_event_dto.dart';
import 'package:dio/dio.dart';

class EventRepository {
  final dio = Dio();

  // Future<List<AppEvent>> getEvents() {}

  Future<void> createEvent(CreateEventDto dto) async {
    await dio
        .post(
          '/events',
          data: dto.toJson(),
        )
        .then((response) => print('[createEvent] $response'));
  }
}
