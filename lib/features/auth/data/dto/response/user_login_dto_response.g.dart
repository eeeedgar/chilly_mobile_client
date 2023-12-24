// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_dto_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginDtoResponse _$UserLoginDtoResponseFromJson(
        Map<String, dynamic> json) =>
    UserLoginDtoResponse(
      json['id'] as String,
      json['username'] as String,
      json['name'] as String,
    );

Map<String, dynamic> _$UserLoginDtoResponseToJson(
        UserLoginDtoResponse instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'id': instance.id,
    };
