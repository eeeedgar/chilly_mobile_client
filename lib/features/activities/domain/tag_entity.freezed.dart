// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TagEntity _$TagEntityFromJson(Map<String, dynamic> json) {
  return _TagEntity.fromJson(json);
}

/// @nodoc
mixin _$TagEntity {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TagEntityCopyWith<TagEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagEntityCopyWith<$Res> {
  factory $TagEntityCopyWith(TagEntity value, $Res Function(TagEntity) then) =
      _$TagEntityCopyWithImpl<$Res, TagEntity>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$TagEntityCopyWithImpl<$Res, $Val extends TagEntity>
    implements $TagEntityCopyWith<$Res> {
  _$TagEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TagEntityImplCopyWith<$Res>
    implements $TagEntityCopyWith<$Res> {
  factory _$$TagEntityImplCopyWith(
          _$TagEntityImpl value, $Res Function(_$TagEntityImpl) then) =
      __$$TagEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TagEntityImplCopyWithImpl<$Res>
    extends _$TagEntityCopyWithImpl<$Res, _$TagEntityImpl>
    implements _$$TagEntityImplCopyWith<$Res> {
  __$$TagEntityImplCopyWithImpl(
      _$TagEntityImpl _value, $Res Function(_$TagEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TagEntityImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TagEntityImpl implements _TagEntity {
  const _$TagEntityImpl({required this.title});

  factory _$TagEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagEntityImplFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'TagEntity(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagEntityImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TagEntityImplCopyWith<_$TagEntityImpl> get copyWith =>
      __$$TagEntityImplCopyWithImpl<_$TagEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TagEntityImplToJson(
      this,
    );
  }
}

abstract class _TagEntity implements TagEntity {
  const factory _TagEntity({required final String title}) = _$TagEntityImpl;

  factory _TagEntity.fromJson(Map<String, dynamic> json) =
      _$TagEntityImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$TagEntityImplCopyWith<_$TagEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
