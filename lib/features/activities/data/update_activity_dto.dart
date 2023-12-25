import 'package:chilly_mobile_client/features/activities/domain/create_activity_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_activity_dto.g.dart';

@JsonSerializable()
class UpdateActivityDto {
  final String title;
  final String description;
  final double latitude;
  final double longitude;
  final DateTime startTime;
  final DateTime finishTime;
  final List<String> pictures;

  UpdateActivityDto(this.title, this.description, this.latitude, this.longitude,
      this.startTime, this.finishTime, this.pictures);

  Map<String, dynamic> toJson() => _$UpdateActivityDtoToJson(this);

  factory UpdateActivityDto.fromEntityWithUserId(
          CreateActivityEntity entity, String userId) =>
      UpdateActivityDto(
        entity.title!,
        entity.description!,
        entity.latitude!,
        entity.longitude!,
        entity.startTime!,
        entity.finishTime!,
        entity.pictures!,
      );
}
