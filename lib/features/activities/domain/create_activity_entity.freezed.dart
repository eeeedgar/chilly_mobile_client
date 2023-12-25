// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_activity_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateActivityEntity _$CreateActivityEntityFromJson(Map<String, dynamic> json) {
  return _CreateActivityEntity.fromJson(json);
}

/// @nodoc
mixin _$CreateActivityEntity {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  DateTime? get finishTime => throw _privateConstructorUsedError;
  List<String>? get pictures => throw _privateConstructorUsedError;
  List<TagEntity>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateActivityEntityCopyWith<CreateActivityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateActivityEntityCopyWith<$Res> {
  factory $CreateActivityEntityCopyWith(CreateActivityEntity value,
          $Res Function(CreateActivityEntity) then) =
      _$CreateActivityEntityCopyWithImpl<$Res, CreateActivityEntity>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      double? latitude,
      double? longitude,
      DateTime? startTime,
      DateTime? finishTime,
      List<String>? pictures,
      List<TagEntity>? tags});
}

/// @nodoc
class _$CreateActivityEntityCopyWithImpl<$Res,
        $Val extends CreateActivityEntity>
    implements $CreateActivityEntityCopyWith<$Res> {
  _$CreateActivityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? pictures = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pictures: freezed == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateActivityEntityImplCopyWith<$Res>
    implements $CreateActivityEntityCopyWith<$Res> {
  factory _$$CreateActivityEntityImplCopyWith(_$CreateActivityEntityImpl value,
          $Res Function(_$CreateActivityEntityImpl) then) =
      __$$CreateActivityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      double? latitude,
      double? longitude,
      DateTime? startTime,
      DateTime? finishTime,
      List<String>? pictures,
      List<TagEntity>? tags});
}

/// @nodoc
class __$$CreateActivityEntityImplCopyWithImpl<$Res>
    extends _$CreateActivityEntityCopyWithImpl<$Res, _$CreateActivityEntityImpl>
    implements _$$CreateActivityEntityImplCopyWith<$Res> {
  __$$CreateActivityEntityImplCopyWithImpl(_$CreateActivityEntityImpl _value,
      $Res Function(_$CreateActivityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? startTime = freezed,
    Object? finishTime = freezed,
    Object? pictures = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$CreateActivityEntityImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finishTime: freezed == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pictures: freezed == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateActivityEntityImpl implements _CreateActivityEntity {
  const _$CreateActivityEntityImpl(
      {this.title,
      this.description,
      this.latitude,
      this.longitude,
      this.startTime,
      this.finishTime,
      final List<String>? pictures,
      final List<TagEntity>? tags})
      : _pictures = pictures,
        _tags = tags;

  factory _$CreateActivityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateActivityEntityImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final DateTime? startTime;
  @override
  final DateTime? finishTime;
  final List<String>? _pictures;
  @override
  List<String>? get pictures {
    final value = _pictures;
    if (value == null) return null;
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TagEntity>? _tags;
  @override
  List<TagEntity>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateActivityEntity(title: $title, description: $description, latitude: $latitude, longitude: $longitude, startTime: $startTime, finishTime: $finishTime, pictures: $pictures, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateActivityEntityImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.finishTime, finishTime) ||
                other.finishTime == finishTime) &&
            const DeepCollectionEquality().equals(other._pictures, _pictures) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      latitude,
      longitude,
      startTime,
      finishTime,
      const DeepCollectionEquality().hash(_pictures),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateActivityEntityImplCopyWith<_$CreateActivityEntityImpl>
      get copyWith =>
          __$$CreateActivityEntityImplCopyWithImpl<_$CreateActivityEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateActivityEntityImplToJson(
      this,
    );
  }
}

abstract class _CreateActivityEntity implements CreateActivityEntity {
  const factory _CreateActivityEntity(
      {final String? title,
      final String? description,
      final double? latitude,
      final double? longitude,
      final DateTime? startTime,
      final DateTime? finishTime,
      final List<String>? pictures,
      final List<TagEntity>? tags}) = _$CreateActivityEntityImpl;

  factory _CreateActivityEntity.fromJson(Map<String, dynamic> json) =
      _$CreateActivityEntityImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  DateTime? get startTime;
  @override
  DateTime? get finishTime;
  @override
  List<String>? get pictures;
  @override
  List<TagEntity>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$CreateActivityEntityImplCopyWith<_$CreateActivityEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
