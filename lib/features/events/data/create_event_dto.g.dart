// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateEventDto _$CreateEventDtoFromJson(Map<String, dynamic> json) =>
    CreateEventDto(
      json['title'] as String,
      json['description'] as String,
      (json['latitude'] as num).toDouble(),
      (json['longitude'] as num).toDouble(),
      DateTime.parse(json['startTime'] as String),
      DateTime.parse(json['finishTime'] as String),
      (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      json['userId'] as String,
    );

Map<String, dynamic> _$CreateEventDtoToJson(CreateEventDto instance) =>
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
