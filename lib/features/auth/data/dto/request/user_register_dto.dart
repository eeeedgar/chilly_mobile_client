import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_register_dto.g.dart';

@JsonSerializable()
class UserRegisterDto {
  const UserRegisterDto({
    required this.name,
    required this.login,
    required this.password,
    required this.profilePicUrl,
    required this.role,
  });

  Map<String, dynamic> toJson() => _$UserRegisterDtoToJson(this);

  final String name;

  final String profilePicUrl;

  final String login;

  final String password;

  final List<String> role;
}
