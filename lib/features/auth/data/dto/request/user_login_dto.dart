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

// [+16051 ms] flutter: 4f03b8c4-358a-449a-ac1d-4d336d684a73
// [        ] flutter: eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyUmVzdWx0Ijp7InVzZXJuYW1lIjoib2NvcnUiLCJuYW1lIjoiZWRnYXJvayIsImlkIjoiNGYwM2I4YzQtMzU4YS00NDlhLWFjMWQtNGQzMzZkNjg0YTczIn0sImlhdCI6MTcwMzY2NjI0MywiZXhwIjoxNzAzNjY5ODQzfQ.VmenFvN0fxN2HWrJwikge6Nbjfit_oBlS3KKGVacY_4
