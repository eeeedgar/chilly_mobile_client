// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchSettings {
  bool get onlyActive => throw _privateConstructorUsedError;
  bool get inRange => throw _privateConstructorUsedError;
  double? get minLatitude => throw _privateConstructorUsedError;
  double? get maxLatitude => throw _privateConstructorUsedError;
  double? get minLongitude => throw _privateConstructorUsedError;
  double? get maxLongitude => throw _privateConstructorUsedError;
  String? get searchByTagText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchSettingsCopyWith<SearchSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchSettingsCopyWith<$Res> {
  factory $SearchSettingsCopyWith(
          SearchSettings value, $Res Function(SearchSettings) then) =
      _$SearchSettingsCopyWithImpl<$Res, SearchSettings>;
  @useResult
  $Res call(
      {bool onlyActive,
      bool inRange,
      double? minLatitude,
      double? maxLatitude,
      double? minLongitude,
      double? maxLongitude,
      String? searchByTagText});
}

/// @nodoc
class _$SearchSettingsCopyWithImpl<$Res, $Val extends SearchSettings>
    implements $SearchSettingsCopyWith<$Res> {
  _$SearchSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlyActive = null,
    Object? inRange = null,
    Object? minLatitude = freezed,
    Object? maxLatitude = freezed,
    Object? minLongitude = freezed,
    Object? maxLongitude = freezed,
    Object? searchByTagText = freezed,
  }) {
    return _then(_value.copyWith(
      onlyActive: null == onlyActive
          ? _value.onlyActive
          : onlyActive // ignore: cast_nullable_to_non_nullable
              as bool,
      inRange: null == inRange
          ? _value.inRange
          : inRange // ignore: cast_nullable_to_non_nullable
              as bool,
      minLatitude: freezed == minLatitude
          ? _value.minLatitude
          : minLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLatitude: freezed == maxLatitude
          ? _value.maxLatitude
          : maxLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      minLongitude: freezed == minLongitude
          ? _value.minLongitude
          : minLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLongitude: freezed == maxLongitude
          ? _value.maxLongitude
          : maxLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      searchByTagText: freezed == searchByTagText
          ? _value.searchByTagText
          : searchByTagText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchSettingsImplCopyWith<$Res>
    implements $SearchSettingsCopyWith<$Res> {
  factory _$$SearchSettingsImplCopyWith(_$SearchSettingsImpl value,
          $Res Function(_$SearchSettingsImpl) then) =
      __$$SearchSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool onlyActive,
      bool inRange,
      double? minLatitude,
      double? maxLatitude,
      double? minLongitude,
      double? maxLongitude,
      String? searchByTagText});
}

/// @nodoc
class __$$SearchSettingsImplCopyWithImpl<$Res>
    extends _$SearchSettingsCopyWithImpl<$Res, _$SearchSettingsImpl>
    implements _$$SearchSettingsImplCopyWith<$Res> {
  __$$SearchSettingsImplCopyWithImpl(
      _$SearchSettingsImpl _value, $Res Function(_$SearchSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlyActive = null,
    Object? inRange = null,
    Object? minLatitude = freezed,
    Object? maxLatitude = freezed,
    Object? minLongitude = freezed,
    Object? maxLongitude = freezed,
    Object? searchByTagText = freezed,
  }) {
    return _then(_$SearchSettingsImpl(
      onlyActive: null == onlyActive
          ? _value.onlyActive
          : onlyActive // ignore: cast_nullable_to_non_nullable
              as bool,
      inRange: null == inRange
          ? _value.inRange
          : inRange // ignore: cast_nullable_to_non_nullable
              as bool,
      minLatitude: freezed == minLatitude
          ? _value.minLatitude
          : minLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLatitude: freezed == maxLatitude
          ? _value.maxLatitude
          : maxLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      minLongitude: freezed == minLongitude
          ? _value.minLongitude
          : minLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      maxLongitude: freezed == maxLongitude
          ? _value.maxLongitude
          : maxLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      searchByTagText: freezed == searchByTagText
          ? _value.searchByTagText
          : searchByTagText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchSettingsImpl implements _SearchSettings {
  const _$SearchSettingsImpl(
      {this.onlyActive = true,
      this.inRange = false,
      this.minLatitude,
      this.maxLatitude,
      this.minLongitude,
      this.maxLongitude,
      this.searchByTagText});

  @override
  @JsonKey()
  final bool onlyActive;
  @override
  @JsonKey()
  final bool inRange;
  @override
  final double? minLatitude;
  @override
  final double? maxLatitude;
  @override
  final double? minLongitude;
  @override
  final double? maxLongitude;
  @override
  final String? searchByTagText;

  @override
  String toString() {
    return 'SearchSettings(onlyActive: $onlyActive, inRange: $inRange, minLatitude: $minLatitude, maxLatitude: $maxLatitude, minLongitude: $minLongitude, maxLongitude: $maxLongitude, searchByTagText: $searchByTagText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSettingsImpl &&
            (identical(other.onlyActive, onlyActive) ||
                other.onlyActive == onlyActive) &&
            (identical(other.inRange, inRange) || other.inRange == inRange) &&
            (identical(other.minLatitude, minLatitude) ||
                other.minLatitude == minLatitude) &&
            (identical(other.maxLatitude, maxLatitude) ||
                other.maxLatitude == maxLatitude) &&
            (identical(other.minLongitude, minLongitude) ||
                other.minLongitude == minLongitude) &&
            (identical(other.maxLongitude, maxLongitude) ||
                other.maxLongitude == maxLongitude) &&
            (identical(other.searchByTagText, searchByTagText) ||
                other.searchByTagText == searchByTagText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onlyActive, inRange, minLatitude,
      maxLatitude, minLongitude, maxLongitude, searchByTagText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSettingsImplCopyWith<_$SearchSettingsImpl> get copyWith =>
      __$$SearchSettingsImplCopyWithImpl<_$SearchSettingsImpl>(
          this, _$identity);
}

abstract class _SearchSettings implements SearchSettings {
  const factory _SearchSettings(
      {final bool onlyActive,
      final bool inRange,
      final double? minLatitude,
      final double? maxLatitude,
      final double? minLongitude,
      final double? maxLongitude,
      final String? searchByTagText}) = _$SearchSettingsImpl;

  @override
  bool get onlyActive;
  @override
  bool get inRange;
  @override
  double? get minLatitude;
  @override
  double? get maxLatitude;
  @override
  double? get minLongitude;
  @override
  double? get maxLongitude;
  @override
  String? get searchByTagText;
  @override
  @JsonKey(ignore: true)
  _$$SearchSettingsImplCopyWith<_$SearchSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
