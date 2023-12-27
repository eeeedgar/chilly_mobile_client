import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register_dto.freezed.dart';
part 'user_register_dto.g.dart';

@freezed
class UserRegisterDto with _$UserRegisterDto {
  const factory UserRegisterDto({
    required String name,
    required String login,
    required String profilePicUrl,
    required String password,
    required List<String> role,
  }) = _UserRegisterDto;

  factory UserRegisterDto.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterDtoFromJson(json);
}
