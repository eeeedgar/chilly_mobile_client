import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_settings.freezed.dart';

@freezed
class SearchSettings with _$SearchSettings {
  const factory SearchSettings({
    @Default(true) bool onlyActive,
    @Default(false) bool inRange,
    double? minLatitude,
    double? maxLatitude,
    double? minLongitude,
    double? maxLongitude,
    String? searchByTagText,
  }) = _SearchSettings;
}
