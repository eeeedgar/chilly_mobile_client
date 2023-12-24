// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginDto _$UserLoginDtoFromJson(Map<String, dynamic> json) => UserLoginDto(
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserLoginDtoToJson(UserLoginDto instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
    };
