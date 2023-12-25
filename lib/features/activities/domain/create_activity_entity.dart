import 'package:chilly_mobile_client/features/activities/domain/tag_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_activity_entity.freezed.dart';
part 'create_activity_entity.g.dart';

@freezed
class CreateActivityEntity with _$CreateActivityEntity {
  const factory CreateActivityEntity({
    String? title,
    String? description,
    double? latitude,
    double? longitude,
    DateTime? startTime,
    DateTime? finishTime,
    List<String>? pictures,
    List<TagEntity>? tags,
  }) = _CreateActivityEntity;

  factory CreateActivityEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateActivityEntityFromJson(json);
}
