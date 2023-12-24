import 'package:json_annotation/json_annotation.dart';

part 'user_login_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserLoginDto {
  const UserLoginDto({
    required this.login,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$UserLoginDtoToJson(this);

  final String login;

  final String password;
}
