import 'package:chilly_mobile_client/features/activities/domain/activity_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_meta.freezed.dart';
part 'activity_meta.g.dart';

@freezed
class ActivityMeta with _$ActivityMeta {
  const factory ActivityMeta({
    required ActivityEntity event,
    required bool isFavorite,
    required bool isOwn,
    required bool isActive,
  }) = _ActivityMeta;

  factory ActivityMeta.fromJson(Map<String, dynamic> json) =>
      _$ActivityMetaFromJson(json);
}
