// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegisterDto _$UserRegisterDtoFromJson(Map<String, dynamic> json) {
  return _UserRegisterDto.fromJson(json);
}

/// @nodoc
mixin _$UserRegisterDto {
  String get name => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  String get profilePicUrl => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  List<String> get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterDtoCopyWith<UserRegisterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterDtoCopyWith<$Res> {
  factory $UserRegisterDtoCopyWith(
          UserRegisterDto value, $Res Function(UserRegisterDto) then) =
      _$UserRegisterDtoCopyWithImpl<$Res, UserRegisterDto>;
  @useResult
  $Res call(
      {String name,
      String login,
      String profilePicUrl,
      String password,
      List<String> role});
}

/// @nodoc
class _$UserRegisterDtoCopyWithImpl<$Res, $Val extends UserRegisterDto>
    implements $UserRegisterDtoCopyWith<$Res> {
  _$UserRegisterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? login = null,
    Object? profilePicUrl = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicUrl: null == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegisterDtoImplCopyWith<$Res>
    implements $UserRegisterDtoCopyWith<$Res> {
  factory _$$UserRegisterDtoImplCopyWith(_$UserRegisterDtoImpl value,
          $Res Function(_$UserRegisterDtoImpl) then) =
      __$$UserRegisterDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String login,
      String profilePicUrl,
      String password,
      List<String> role});
}

/// @nodoc
class __$$UserRegisterDtoImplCopyWithImpl<$Res>
    extends _$UserRegisterDtoCopyWithImpl<$Res, _$UserRegisterDtoImpl>
    implements _$$UserRegisterDtoImplCopyWith<$Res> {
  __$$UserRegisterDtoImplCopyWithImpl(
      _$UserRegisterDtoImpl _value, $Res Function(_$UserRegisterDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? login = null,
    Object? profilePicUrl = null,
    Object? password = null,
    Object? role = null,
  }) {
    return _then(_$UserRegisterDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicUrl: null == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRegisterDtoImpl implements _UserRegisterDto {
  const _$UserRegisterDtoImpl(
      {required this.name,
      required this.login,
      required this.profilePicUrl,
      required this.password,
      required final List<String> role})
      : _role = role;

  factory _$UserRegisterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegisterDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String login;
  @override
  final String profilePicUrl;
  @override
  final String password;
  final List<String> _role;
  @override
  List<String> get role {
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_role);
  }

  @override
  String toString() {
    return 'UserRegisterDto(name: $name, login: $login, profilePicUrl: $profilePicUrl, password: $password, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._role, _role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, login, profilePicUrl,
      password, const DeepCollectionEquality().hash(_role));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterDtoImplCopyWith<_$UserRegisterDtoImpl> get copyWith =>
      __$$UserRegisterDtoImplCopyWithImpl<_$UserRegisterDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegisterDtoImplToJson(
      this,
    );
  }
}

abstract class _UserRegisterDto implements UserRegisterDto {
  const factory _UserRegisterDto(
      {required final String name,
      required final String login,
      required final String profilePicUrl,
      required final String password,
      required final List<String> role}) = _$UserRegisterDtoImpl;

  factory _UserRegisterDto.fromJson(Map<String, dynamic> json) =
      _$UserRegisterDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get login;
  @override
  String get profilePicUrl;
  @override
  String get password;
  @override
  List<String> get role;
  @override
  @JsonKey(ignore: true)
  _$$UserRegisterDtoImplCopyWith<_$UserRegisterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
