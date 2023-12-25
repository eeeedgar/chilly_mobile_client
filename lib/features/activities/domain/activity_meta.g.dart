// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityMetaImpl _$$ActivityMetaImplFromJson(Map<String, dynamic> json) =>
    _$ActivityMetaImpl(
      event: ActivityEntity.fromJson(json['event'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool,
      isOwn: json['isOwn'] as bool,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$ActivityMetaImplToJson(_$ActivityMetaImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'isFavorite': instance.isFavorite,
      'isOwn': instance.isOwn,
      'isActive': instance.isActive,
    };
