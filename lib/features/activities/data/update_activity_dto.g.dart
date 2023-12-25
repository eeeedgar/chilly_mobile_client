// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_activity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateActivityDto _$UpdateActivityDtoFromJson(Map<String, dynamic> json) =>
    UpdateActivityDto(
      json['title'] as String,
      json['description'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      DateTime.parse(json['startTime'] as String),
      DateTime.parse(json['finishTime'] as String),
      (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UpdateActivityDtoToJson(UpdateActivityDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'startTime': instance.startTime.toIso8601String(),
      'finishTime': instance.finishTime.toIso8601String(),
      'pictures': instance.pictures,
    };
