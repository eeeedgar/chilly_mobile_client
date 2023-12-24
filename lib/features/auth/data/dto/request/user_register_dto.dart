import 'package:json_annotation/json_annotation.dart';

part 'user_register_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserRegisterDto {
  const UserRegisterDto({
    required this.name,
    required this.login,
    required this.password,
    required this.profilePicUrl,
  });

  Map<String, dynamic> toJson() => _$UserRegisterDtoToJson(this);

  final String name;

  final String profilePicUrl;

  final String login;

  final String password;
}
