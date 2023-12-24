import 'package:chilly_mobile_client/features/auth/data/dto/response/user_login_dto_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_login_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UserLoginResponse {
  const UserLoginResponse(this.user, this.accessToken);

  factory UserLoginResponse.fromJson(Map<String, dynamic> json) {
    return _$UserLoginResponseFromJson(json);
  }

  final UserLoginDtoResponse user;

  final String accessToken;
}
