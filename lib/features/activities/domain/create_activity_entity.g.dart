// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_activity_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateActivityEntityImpl _$$CreateActivityEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateActivityEntityImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      finishTime: json['finishTime'] == null
          ? null
          : DateTime.parse(json['finishTime'] as String),
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => TagEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateActivityEntityImplToJson(
        _$CreateActivityEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'startTime': instance.startTime?.toIso8601String(),
      'finishTime': instance.finishTime?.toIso8601String(),
      'pictures': instance.pictures,
      'tags': instance.tags,
    };
