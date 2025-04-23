// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Location {
  String get id;
  String? get squareId;
  String get name;
  String get address;
  String get shortAddress;
  double? get latitude;
  double? get longitude;
  String? get imgUrl;
  Map<String, OpeningHours>? get openingHoursSystem;
  String? get marketName;
  String? get marketDisplayName;
  String? get geoName;
  String? get currency;
  bool? get isEnabled;
  bool? get isKioskEnabled;
  bool? get isKioskOpen;
  bool? get isOrderStatusDisabled;
  bool? get isVisible;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationCopyWith<Location> get copyWith =>
      _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Location &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.squareId, squareId) ||
                other.squareId == squareId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.shortAddress, shortAddress) ||
                other.shortAddress == shortAddress) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            const DeepCollectionEquality()
                .equals(other.openingHoursSystem, openingHoursSystem) &&
            (identical(other.marketName, marketName) ||
                other.marketName == marketName) &&
            (identical(other.marketDisplayName, marketDisplayName) ||
                other.marketDisplayName == marketDisplayName) &&
            (identical(other.geoName, geoName) || other.geoName == geoName) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.isKioskEnabled, isKioskEnabled) ||
                other.isKioskEnabled == isKioskEnabled) &&
            (identical(other.isKioskOpen, isKioskOpen) ||
                other.isKioskOpen == isKioskOpen) &&
            (identical(other.isOrderStatusDisabled, isOrderStatusDisabled) ||
                other.isOrderStatusDisabled == isOrderStatusDisabled) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      squareId,
      name,
      address,
      shortAddress,
      latitude,
      longitude,
      imgUrl,
      const DeepCollectionEquality().hash(openingHoursSystem),
      marketName,
      marketDisplayName,
      geoName,
      currency,
      isEnabled,
      isKioskEnabled,
      isKioskOpen,
      isOrderStatusDisabled,
      isVisible);

  @override
  String toString() {
    return 'Location(id: $id, squareId: $squareId, name: $name, address: $address, shortAddress: $shortAddress, latitude: $latitude, longitude: $longitude, imgUrl: $imgUrl, openingHoursSystem: $openingHoursSystem, marketName: $marketName, marketDisplayName: $marketDisplayName, geoName: $geoName, currency: $currency, isEnabled: $isEnabled, isKioskEnabled: $isKioskEnabled, isKioskOpen: $isKioskOpen, isOrderStatusDisabled: $isOrderStatusDisabled, isVisible: $isVisible)';
  }
}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) =
      _$LocationCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String? squareId,
      String name,
      String address,
      String shortAddress,
      double? latitude,
      double? longitude,
      String? imgUrl,
      Map<String, OpeningHours>? openingHoursSystem,
      String? marketName,
      String? marketDisplayName,
      String? geoName,
      String? currency,
      bool? isEnabled,
      bool? isKioskEnabled,
      bool? isKioskOpen,
      bool? isOrderStatusDisabled,
      bool? isVisible});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res> implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? squareId = freezed,
    Object? name = null,
    Object? address = null,
    Object? shortAddress = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? imgUrl = freezed,
    Object? openingHoursSystem = freezed,
    Object? marketName = freezed,
    Object? marketDisplayName = freezed,
    Object? geoName = freezed,
    Object? currency = freezed,
    Object? isEnabled = freezed,
    Object? isKioskEnabled = freezed,
    Object? isKioskOpen = freezed,
    Object? isOrderStatusDisabled = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      squareId: freezed == squareId
          ? _self.squareId
          : squareId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _self.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      imgUrl: freezed == imgUrl
          ? _self.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHoursSystem: freezed == openingHoursSystem
          ? _self.openingHoursSystem
          : openingHoursSystem // ignore: cast_nullable_to_non_nullable
              as Map<String, OpeningHours>?,
      marketName: freezed == marketName
          ? _self.marketName
          : marketName // ignore: cast_nullable_to_non_nullable
              as String?,
      marketDisplayName: freezed == marketDisplayName
          ? _self.marketDisplayName
          : marketDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      geoName: freezed == geoName
          ? _self.geoName
          : geoName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnabled: freezed == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isKioskEnabled: freezed == isKioskEnabled
          ? _self.isKioskEnabled
          : isKioskEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isKioskOpen: freezed == isKioskOpen
          ? _self.isKioskOpen
          : isKioskOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOrderStatusDisabled: freezed == isOrderStatusDisabled
          ? _self.isOrderStatusDisabled
          : isOrderStatusDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVisible: freezed == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Location extends Location {
  const _Location(
      {required this.id,
      this.squareId,
      required this.name,
      required this.address,
      required this.shortAddress,
      this.latitude,
      this.longitude,
      this.imgUrl,
      final Map<String, OpeningHours>? openingHoursSystem,
      this.marketName,
      this.marketDisplayName,
      this.geoName,
      this.currency,
      this.isEnabled,
      this.isKioskEnabled,
      this.isKioskOpen,
      this.isOrderStatusDisabled,
      this.isVisible})
      : _openingHoursSystem = openingHoursSystem,
        super._();
  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  final String id;
  @override
  final String? squareId;
  @override
  final String name;
  @override
  final String address;
  @override
  final String shortAddress;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? imgUrl;
  final Map<String, OpeningHours>? _openingHoursSystem;
  @override
  Map<String, OpeningHours>? get openingHoursSystem {
    final value = _openingHoursSystem;
    if (value == null) return null;
    if (_openingHoursSystem is EqualUnmodifiableMapView)
      return _openingHoursSystem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? marketName;
  @override
  final String? marketDisplayName;
  @override
  final String? geoName;
  @override
  final String? currency;
  @override
  final bool? isEnabled;
  @override
  final bool? isKioskEnabled;
  @override
  final bool? isKioskOpen;
  @override
  final bool? isOrderStatusDisabled;
  @override
  final bool? isVisible;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LocationCopyWith<_Location> get copyWith =>
      __$LocationCopyWithImpl<_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Location &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.squareId, squareId) ||
                other.squareId == squareId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.shortAddress, shortAddress) ||
                other.shortAddress == shortAddress) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            const DeepCollectionEquality()
                .equals(other._openingHoursSystem, _openingHoursSystem) &&
            (identical(other.marketName, marketName) ||
                other.marketName == marketName) &&
            (identical(other.marketDisplayName, marketDisplayName) ||
                other.marketDisplayName == marketDisplayName) &&
            (identical(other.geoName, geoName) || other.geoName == geoName) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.isKioskEnabled, isKioskEnabled) ||
                other.isKioskEnabled == isKioskEnabled) &&
            (identical(other.isKioskOpen, isKioskOpen) ||
                other.isKioskOpen == isKioskOpen) &&
            (identical(other.isOrderStatusDisabled, isOrderStatusDisabled) ||
                other.isOrderStatusDisabled == isOrderStatusDisabled) &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      squareId,
      name,
      address,
      shortAddress,
      latitude,
      longitude,
      imgUrl,
      const DeepCollectionEquality().hash(_openingHoursSystem),
      marketName,
      marketDisplayName,
      geoName,
      currency,
      isEnabled,
      isKioskEnabled,
      isKioskOpen,
      isOrderStatusDisabled,
      isVisible);

  @override
  String toString() {
    return 'Location(id: $id, squareId: $squareId, name: $name, address: $address, shortAddress: $shortAddress, latitude: $latitude, longitude: $longitude, imgUrl: $imgUrl, openingHoursSystem: $openingHoursSystem, marketName: $marketName, marketDisplayName: $marketDisplayName, geoName: $geoName, currency: $currency, isEnabled: $isEnabled, isKioskEnabled: $isKioskEnabled, isKioskOpen: $isKioskOpen, isOrderStatusDisabled: $isOrderStatusDisabled, isVisible: $isVisible)';
  }
}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) =
      __$LocationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String? squareId,
      String name,
      String address,
      String shortAddress,
      double? latitude,
      double? longitude,
      String? imgUrl,
      Map<String, OpeningHours>? openingHoursSystem,
      String? marketName,
      String? marketDisplayName,
      String? geoName,
      String? currency,
      bool? isEnabled,
      bool? isKioskEnabled,
      bool? isKioskOpen,
      bool? isOrderStatusDisabled,
      bool? isVisible});
}

/// @nodoc
class __$LocationCopyWithImpl<$Res> implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? squareId = freezed,
    Object? name = null,
    Object? address = null,
    Object? shortAddress = null,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? imgUrl = freezed,
    Object? openingHoursSystem = freezed,
    Object? marketName = freezed,
    Object? marketDisplayName = freezed,
    Object? geoName = freezed,
    Object? currency = freezed,
    Object? isEnabled = freezed,
    Object? isKioskEnabled = freezed,
    Object? isKioskOpen = freezed,
    Object? isOrderStatusDisabled = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_Location(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      squareId: freezed == squareId
          ? _self.squareId
          : squareId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _self.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: freezed == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      imgUrl: freezed == imgUrl
          ? _self.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      openingHoursSystem: freezed == openingHoursSystem
          ? _self._openingHoursSystem
          : openingHoursSystem // ignore: cast_nullable_to_non_nullable
              as Map<String, OpeningHours>?,
      marketName: freezed == marketName
          ? _self.marketName
          : marketName // ignore: cast_nullable_to_non_nullable
              as String?,
      marketDisplayName: freezed == marketDisplayName
          ? _self.marketDisplayName
          : marketDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      geoName: freezed == geoName
          ? _self.geoName
          : geoName // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _self.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      isEnabled: freezed == isEnabled
          ? _self.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isKioskEnabled: freezed == isKioskEnabled
          ? _self.isKioskEnabled
          : isKioskEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isKioskOpen: freezed == isKioskOpen
          ? _self.isKioskOpen
          : isKioskOpen // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOrderStatusDisabled: freezed == isOrderStatusDisabled
          ? _self.isOrderStatusDisabled
          : isOrderStatusDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVisible: freezed == isVisible
          ? _self.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

// dart format on
