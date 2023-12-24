import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.g.dart';

@JsonSerializable()
class LoginDto {
  final String login;
  final String password;

  LoginDto(
    this.login,
    this.password,
  );

  Map<String, dynamic> toJson() => _$LoginDtoToJson(this);
}
