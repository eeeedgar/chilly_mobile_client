import 'package:json_annotation/json_annotation.dart';

part 'user_login_dto_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserLoginDtoResponse {
  const UserLoginDtoResponse(
    this.id,
    this.username,
    this.name,
  );

  factory UserLoginDtoResponse.fromJson(Map<String, dynamic> json) {
    return _$UserLoginDtoResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserLoginDtoResponseToJson(this);

  final String username;

  final String name;

  final String id;
}
