// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegisterDtoImpl _$$UserRegisterDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegisterDtoImpl(
      name: json['name'] as String,
      login: json['login'] as String,
      profilePicUrl: json['profilePicUrl'] as String,
      password: json['password'] as String,
      role: (json['role'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$UserRegisterDtoImplToJson(
        _$UserRegisterDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'login': instance.login,
      'profilePicUrl': instance.profilePicUrl,
      'password': instance.password,
      'role': instance.role,
    };
