// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegisterDto _$UserRegisterDtoFromJson(Map<String, dynamic> json) =>
    UserRegisterDto(
      name: json['name'] as String,
      login: json['login'] as String,
      password: json['password'] as String,
      profilePicUrl: json['profilePicUrl'] as String,
      role: (json['role'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserRegisterDtoToJson(UserRegisterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profilePicUrl': instance.profilePicUrl,
      'login': instance.login,
      'password': instance.password,
      'role': instance.role,
    };
