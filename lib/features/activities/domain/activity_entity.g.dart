// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityEntityImpl _$$ActivityEntityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      latitude: double.parse('${json['latitude']}'),
      longitude: double.parse('${json['longitude']}'),
      startTime: DateTime.parse(json['startTime'] as String),
      finishTime: DateTime.parse(json['finishTime'] as String),
      pictures:
          (json['pictures'] as List<dynamic>).map((e) => e as String).toList(),
      registeredAt: DateTime.parse(json['registeredAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => TagEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActivityEntityImplToJson(
        _$ActivityEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'startTime': instance.startTime.toIso8601String(),
      'finishTime': instance.finishTime.toIso8601String(),
      'pictures': instance.pictures,
      'registeredAt': instance.registeredAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'tags': instance.tags,
    };
