// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_activity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateActivityDto _$CreateActivityDtoFromJson(Map<String, dynamic> json) =>
    CreateActivityDto(
      json['title'] as String,
      json['description'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      DateTime.parse(json['startTime'] as String),
      DateTime.parse(json['finishTime'] as String),
      (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
      (json['tags'] as List<dynamic>)
          .map((e) => TagEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['userId'] as String,
    );

Map<String, dynamic> _$CreateActivityDtoToJson(CreateActivityDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'startTime': instance.startTime.toIso8601String(),
      'finishTime': instance.finishTime.toIso8601String(),
      'pictures': instance.pictures,
      'tags': instance.tags,
      'userId': instance.userId,
    };
