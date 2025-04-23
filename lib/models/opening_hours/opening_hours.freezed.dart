// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_hours.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpeningHours {
  String get open;
  String get close;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpeningHoursCopyWith<OpeningHours> get copyWith =>
      _$OpeningHoursCopyWithImpl<OpeningHours>(
          this as OpeningHours, _$identity);

  /// Serializes this OpeningHours to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpeningHours &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @override
  String toString() {
    return 'OpeningHours(open: $open, close: $close)';
  }
}

/// @nodoc
abstract mixin class $OpeningHoursCopyWith<$Res> {
  factory $OpeningHoursCopyWith(
          OpeningHours value, $Res Function(OpeningHours) _then) =
      _$OpeningHoursCopyWithImpl;
  @useResult
  $Res call({String open, String close});
}

/// @nodoc
class _$OpeningHoursCopyWithImpl<$Res> implements $OpeningHoursCopyWith<$Res> {
  _$OpeningHoursCopyWithImpl(this._self, this._then);

  final OpeningHours _self;
  final $Res Function(OpeningHours) _then;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_self.copyWith(
      open: null == open
          ? _self.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _self.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OpeningHours extends OpeningHours {
  const _OpeningHours({required this.open, required this.close}) : super._();
  factory _OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);

  @override
  final String open;
  @override
  final String close;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpeningHoursCopyWith<_OpeningHours> get copyWith =>
      __$OpeningHoursCopyWithImpl<_OpeningHours>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpeningHoursToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpeningHours &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.close, close) || other.close == close));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, open, close);

  @override
  String toString() {
    return 'OpeningHours(open: $open, close: $close)';
  }
}

/// @nodoc
abstract mixin class _$OpeningHoursCopyWith<$Res>
    implements $OpeningHoursCopyWith<$Res> {
  factory _$OpeningHoursCopyWith(
          _OpeningHours value, $Res Function(_OpeningHours) _then) =
      __$OpeningHoursCopyWithImpl;
  @override
  @useResult
  $Res call({String open, String close});
}

/// @nodoc
class __$OpeningHoursCopyWithImpl<$Res>
    implements _$OpeningHoursCopyWith<$Res> {
  __$OpeningHoursCopyWithImpl(this._self, this._then);

  final _OpeningHours _self;
  final $Res Function(_OpeningHours) _then;

  /// Create a copy of OpeningHours
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? open = null,
    Object? close = null,
  }) {
    return _then(_OpeningHours(
      open: null == open
          ? _self.open
          : open // ignore: cast_nullable_to_non_nullable
              as String,
      close: null == close
          ? _self.close
          : close // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
