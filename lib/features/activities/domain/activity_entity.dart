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

// "title": "string",
// "description": "string",
// "latitude": 0,
// "longitude": 0,
// "startTime": "2023-12-23T13:56:49.215Z",
// "finishTime": "2023-12-23T13:56:49.215Z",
// "pictures": [
// "string"
// ],
// "id": "5152c65c-52ad-4bd5-a9c6-def6f3f0fbbb",
// "registeredAt": "2023-12-23T12:14:03.549Z",
// "updatedAt": "2023-12-23T12:14:03.549Z",
// "user": null,
// "tags": [
// {
// "title": "string"
// }
// ]
