// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_event_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateEventState {
  LatLng? get point => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  TimeOfDay? get startTime => throw _privateConstructorUsedError;
  TimeOfDay? get endTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateEventStateCopyWith<CreateEventState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventStateCopyWith<$Res> {
  factory $CreateEventStateCopyWith(
          CreateEventState value, $Res Function(CreateEventState) then) =
      _$CreateEventStateCopyWithImpl<$Res, CreateEventState>;
  @useResult
  $Res call(
      {LatLng? point,
      String? address,
      String? title,
      DateTime? startDate,
      DateTime? endDate,
      TimeOfDay? startTime,
      TimeOfDay? endTime});
}

/// @nodoc
class _$CreateEventStateCopyWithImpl<$Res, $Val extends CreateEventState>
    implements $CreateEventStateCopyWith<$Res> {
  _$CreateEventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = freezed,
    Object? address = freezed,
    Object? title = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_value.copyWith(
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateEventStateImplCopyWith<$Res>
    implements $CreateEventStateCopyWith<$Res> {
  factory _$$CreateEventStateImplCopyWith(_$CreateEventStateImpl value,
          $Res Function(_$CreateEventStateImpl) then) =
      __$$CreateEventStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng? point,
      String? address,
      String? title,
      DateTime? startDate,
      DateTime? endDate,
      TimeOfDay? startTime,
      TimeOfDay? endTime});
}

/// @nodoc
class __$$CreateEventStateImplCopyWithImpl<$Res>
    extends _$CreateEventStateCopyWithImpl<$Res, _$CreateEventStateImpl>
    implements _$$CreateEventStateImplCopyWith<$Res> {
  __$$CreateEventStateImplCopyWithImpl(_$CreateEventStateImpl _value,
      $Res Function(_$CreateEventStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = freezed,
    Object? address = freezed,
    Object? title = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
  }) {
    return _then(_$CreateEventStateImpl(
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay?,
    ));
  }
}

/// @nodoc

class _$CreateEventStateImpl implements _CreateEventState {
  _$CreateEventStateImpl(
      {this.point,
      this.address,
      this.title,
      this.startDate,
      this.endDate,
      this.startTime,
      this.endTime});

  @override
  final LatLng? point;
  @override
  final String? address;
  @override
  final String? title;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final TimeOfDay? startTime;
  @override
  final TimeOfDay? endTime;

  @override
  String toString() {
    return 'CreateEventState(point: $point, address: $address, title: $title, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateEventStateImpl &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point, address, title, startDate,
      endDate, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateEventStateImplCopyWith<_$CreateEventStateImpl> get copyWith =>
      __$$CreateEventStateImplCopyWithImpl<_$CreateEventStateImpl>(
          this, _$identity);
}

abstract class _CreateEventState implements CreateEventState {
  factory _CreateEventState(
      {final LatLng? point,
      final String? address,
      final String? title,
      final DateTime? startDate,
      final DateTime? endDate,
      final TimeOfDay? startTime,
      final TimeOfDay? endTime}) = _$CreateEventStateImpl;

  @override
  LatLng? get point;
  @override
  String? get address;
  @override
  String? get title;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  TimeOfDay? get startTime;
  @override
  TimeOfDay? get endTime;
  @override
  @JsonKey(ignore: true)
  _$$CreateEventStateImplCopyWith<_$CreateEventStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
