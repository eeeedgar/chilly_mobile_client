// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityEntity _$ActivityEntityFromJson(Map<String, dynamic> json) {
  return _ActivityEntity.fromJson(json);
}

/// @nodoc
mixin _$ActivityEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get finishTime => throw _privateConstructorUsedError;
  List<String> get pictures => throw _privateConstructorUsedError;
  DateTime get registeredAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError; // required
  List<TagEntity> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityEntityCopyWith<ActivityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEntityCopyWith<$Res> {
  factory $ActivityEntityCopyWith(
          ActivityEntity value, $Res Function(ActivityEntity) then) =
      _$ActivityEntityCopyWithImpl<$Res, ActivityEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      double latitude,
      double longitude,
      DateTime startTime,
      DateTime finishTime,
      List<String> pictures,
      DateTime registeredAt,
      DateTime updatedAt,
      List<TagEntity> tags});
}

/// @nodoc
class _$ActivityEntityCopyWithImpl<$Res, $Val extends ActivityEntity>
    implements $ActivityEntityCopyWith<$Res> {
  _$ActivityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startTime = null,
    Object? finishTime = null,
    Object? pictures = null,
    Object? registeredAt = null,
    Object? updatedAt = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pictures: null == pictures
          ? _value.pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActivityEntityImplCopyWith<$Res>
    implements $ActivityEntityCopyWith<$Res> {
  factory _$$ActivityEntityImplCopyWith(_$ActivityEntityImpl value,
          $Res Function(_$ActivityEntityImpl) then) =
      __$$ActivityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      double latitude,
      double longitude,
      DateTime startTime,
      DateTime finishTime,
      List<String> pictures,
      DateTime registeredAt,
      DateTime updatedAt,
      List<TagEntity> tags});
}

/// @nodoc
class __$$ActivityEntityImplCopyWithImpl<$Res>
    extends _$ActivityEntityCopyWithImpl<$Res, _$ActivityEntityImpl>
    implements _$$ActivityEntityImplCopyWith<$Res> {
  __$$ActivityEntityImplCopyWithImpl(
      _$ActivityEntityImpl _value, $Res Function(_$ActivityEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? startTime = null,
    Object? finishTime = null,
    Object? pictures = null,
    Object? registeredAt = null,
    Object? updatedAt = null,
    Object? tags = null,
  }) {
    return _then(_$ActivityEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishTime: null == finishTime
          ? _value.finishTime
          : finishTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pictures: null == pictures
          ? _value._pictures
          : pictures // ignore: cast_nullable_to_non_nullable
              as List<String>,
      registeredAt: null == registeredAt
          ? _value.registeredAt
          : registeredAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<TagEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActivityEntityImpl implements _ActivityEntity {
  const _$ActivityEntityImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.latitude,
      required this.longitude,
      required this.startTime,
      required this.finishTime,
      required final List<String> pictures,
      required this.registeredAt,
      required this.updatedAt,
      required final List<TagEntity> tags})
      : _pictures = pictures,
        _tags = tags;

  factory _$ActivityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final DateTime startTime;
  @override
  final DateTime finishTime;
  final List<String> _pictures;
  @override
  List<String> get pictures {
    if (_pictures is EqualUnmodifiableListView) return _pictures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pictures);
  }

  @override
  final DateTime registeredAt;
  @override
  final DateTime updatedAt;
// required
  final List<TagEntity> _tags;
// required
  @override
  List<TagEntity> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'ActivityEntity(id: $id, title: $title, description: $description, latitude: $latitude, longitude: $longitude, startTime: $startTime, finishTime: $finishTime, pictures: $pictures, registeredAt: $registeredAt, updatedAt: $updatedAt, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
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
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      latitude,
      longitude,
      startTime,
      finishTime,
      const DeepCollectionEquality().hash(_pictures),
      registeredAt,
      updatedAt,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityEntityImplCopyWith<_$ActivityEntityImpl> get copyWith =>
      __$$ActivityEntityImplCopyWithImpl<_$ActivityEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityEntityImplToJson(
      this,
    );
  }
}

abstract class _ActivityEntity implements ActivityEntity {
  const factory _ActivityEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final double latitude,
      required final double longitude,
      required final DateTime startTime,
      required final DateTime finishTime,
      required final List<String> pictures,
      required final DateTime registeredAt,
      required final DateTime updatedAt,
      required final List<TagEntity> tags}) = _$ActivityEntityImpl;

  factory _ActivityEntity.fromJson(Map<String, dynamic> json) =
      _$ActivityEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  DateTime get startTime;
  @override
  DateTime get finishTime;
  @override
  List<String> get pictures;
  @override
  DateTime get registeredAt;
  @override
  DateTime get updatedAt;
  @override // required
  List<TagEntity> get tags;
  @override
  @JsonKey(ignore: true)
  _$$ActivityEntityImplCopyWith<_$ActivityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
