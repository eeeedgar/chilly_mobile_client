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
      profilePicUrl: json['profile_pic_url'] as String,
    );

Map<String, dynamic> _$UserRegisterDtoToJson(UserRegisterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profile_pic_url': instance.profilePicUrl,
      'login': instance.login,
      'password': instance.password,
    };
