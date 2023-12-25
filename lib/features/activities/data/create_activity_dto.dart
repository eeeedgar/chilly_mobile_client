import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_activity_dto.g.dart';

@JsonSerializable()
class CreateActivityDto {
  final String title;
  final String description;
  final int latitude;
  final int longitude;
  final DateTime startTime;
  final DateTime finishTime;
  final List<String> pictures;
  final List<String> tags;
  final String userId;

  CreateActivityDto(this.title, this.description, this.latitude, this.longitude,
      this.startTime, this.finishTime, this.pictures, this.tags, this.userId);

  Map<String, dynamic> toJson() => _$CreateActivityDtoToJson(this);

  factory CreateActivityDto.fromEntityWithUserId(
          CreateActivityEntity entity, String userId) =>
      CreateActivityDto(
          entity.title!,
          entity.description!,
          entity.latitude!.round(),
          entity.longitude!.round(),
          entity.startTime!,
          entity.finishTime!,
          entity.pictures!,
          entity.tags!.map((e) => e.title).toList(),
          userId);
}
