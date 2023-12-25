// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityMeta _$ActivityMetaFromJson(Map<String, dynamic> json) {
  return _ActivityMeta.fromJson(json);
}

/// @nodoc
mixin _$ActivityMeta {
  ActivityEntity get event => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  bool get isOwn => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityMetaCopyWith<ActivityMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityMetaCopyWith<$Res> {
  factory $ActivityMetaCopyWith(
          ActivityMeta value, $Res Function(ActivityMeta) then) =
      _$ActivityMetaCopyWithImpl<$Res, ActivityMeta>;
  @useResult
  $Res call({ActivityEntity event, bool isFavorite, bool isOwn, bool isActive});

  $ActivityEntityCopyWith<$Res> get event;
}

/// @nodoc
class _$ActivityMetaCopyWithImpl<$Res, $Val extends ActivityMeta>
    implements $ActivityMetaCopyWith<$Res> {
  _$ActivityMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? isFavorite = null,
    Object? isOwn = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ActivityEntity,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwn: null == isOwn
          ? _value.isOwn
          : isOwn // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityEntityCopyWith<$Res> get event {
    return $ActivityEntityCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityMetaImplCopyWith<$Res>
    implements $ActivityMetaCopyWith<$Res> {
  factory _$$ActivityMetaImplCopyWith(
          _$ActivityMetaImpl value, $Res Function(_$ActivityMetaImpl) then) =
      __$$ActivityMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActivityEntity event, bool isFavorite, bool isOwn, bool isActive});

  @override
  $ActivityEntityCopyWith<$Res> get event;
}

/// @nodoc
class __$$ActivityMetaImplCopyWithImpl<$Res>
    extends _$ActivityMetaCopyWithImpl<$Res, _$ActivityMetaImpl>
    implements _$$ActivityMetaImplCopyWith<$Res> {
  __$$ActivityMetaImplCopyWithImpl(
      _$ActivityMetaImpl _value, $Res Function(_$ActivityMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? isFavorite = null,
    Object? isOwn = null,
    Object? isActive = null,
  }) {
    return _then(_$ActivityMetaImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ActivityEntity,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isOwn: null == isOwn
          ? _value.isOwn
          : isOwn // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityMetaImpl implements _ActivityMeta {
  const _$ActivityMetaImpl(
      {required this.event,
      required this.isFavorite,
      required this.isOwn,
      required this.isActive});

  factory _$ActivityMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityMetaImplFromJson(json);

  @override
  final ActivityEntity event;
  @override
  final bool isFavorite;
  @override
  final bool isOwn;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'ActivityMeta(event: $event, isFavorite: $isFavorite, isOwn: $isOwn, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityMetaImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.isOwn, isOwn) || other.isOwn == isOwn) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, event, isFavorite, isOwn, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityMetaImplCopyWith<_$ActivityMetaImpl> get copyWith =>
      __$$ActivityMetaImplCopyWithImpl<_$ActivityMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityMetaImplToJson(
      this,
    );
  }
}

abstract class _ActivityMeta implements ActivityMeta {
  const factory _ActivityMeta(
      {required final ActivityEntity event,
      required final bool isFavorite,
      required final bool isOwn,
      required final bool isActive}) = _$ActivityMetaImpl;

  factory _ActivityMeta.fromJson(Map<String, dynamic> json) =
      _$ActivityMetaImpl.fromJson;

  @override
  ActivityEntity get event;
  @override
  bool get isFavorite;
  @override
  bool get isOwn;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$ActivityMetaImplCopyWith<_$ActivityMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
