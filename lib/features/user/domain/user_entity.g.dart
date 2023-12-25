// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      login: json['login'] as String,
      password: json['password'] as String,
      profilePicUrl: json['profilePicUrl'] as String,
      registeredAt: DateTime.parse(json['registeredAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'login': instance.login,
      'password': instance.password,
      'profilePicUrl': instance.profilePicUrl,
      'registeredAt': instance.registeredAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
