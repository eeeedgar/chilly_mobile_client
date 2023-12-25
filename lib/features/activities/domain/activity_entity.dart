import 'package:chilly_mobile_client/features/activities/domain/tag_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_entity.freezed.dart';
part 'activity_entity.g.dart';

@freezed
class ActivityEntity with _$ActivityEntity {
  const factory ActivityEntity({
    required String id,
    required String title,
    required String description,
    required double latitude,
    required double longitude,
    required DateTime startTime,
    required DateTime finishTime,
    required List<String> pictures,
    required DateTime registeredAt,
    required DateTime updatedAt,
    // required
    required List<TagEntity> tags,
  }) = _ActivityEntity;

  factory ActivityEntity.fromJson(Map<String, dynamic> json) =>
      _$ActivityEntityFromJson(json);
}
