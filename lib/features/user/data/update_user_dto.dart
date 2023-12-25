import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_dto.g.dart';

@JsonSerializable(includeIfNull: false)
class UpdateUserDto {
  final String? name;
  final String? login;

  UpdateUserDto(this.name, this.login);

  Map<String, dynamic> toJson() => _$UpdateUserDtoToJson(this);
}
