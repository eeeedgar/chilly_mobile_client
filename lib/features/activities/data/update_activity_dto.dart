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
}
