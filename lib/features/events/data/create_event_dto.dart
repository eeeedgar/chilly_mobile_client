import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_event_dto.g.dart';

@JsonSerializable()
class CreateEventDto {
  final String title;
  final String description;
  final double latitude;
  final double longitude;
  final DateTime startTime;
  final DateTime finishTime;
  final List<String> pictures;
  final List<String> tags;
  final String userId;

  CreateEventDto(this.title, this.description, this.latitude, this.longitude,
      this.startTime, this.finishTime, this.pictures, this.tags, this.userId);

  Map<String, dynamic> toJson() => _$CreateEventDtoToJson(this);
}
