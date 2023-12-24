import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent({
    int? id,
    String? name,
    String? description,
    String? address,
    double? long,
    double? lat,
    DateTime? start,
    DateTime? end,
    List<String>? tags,
    List<String>? photos,
  }) = _AppEvent;

  factory AppEvent.fromJson(Map<String, Object> json) =>
      _$AppEventFromJson(json);
}
