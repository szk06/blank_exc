// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
      id: json['id'] as String,
      squareId: json['squareId'] as String?,
      name: json['name'] as String,
      address: json['address'] as String,
      shortAddress: json['shortAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      imgUrl: json['imgUrl'] as String?,
      openingHoursSystem:
          (json['openingHoursSystem'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, OpeningHours.fromJson(e as Map<String, dynamic>)),
      ),
      marketName: json['marketName'] as String?,
      marketDisplayName: json['marketDisplayName'] as String?,
      geoName: json['geoName'] as String?,
      currency: json['currency'] as String?,
      isEnabled: json['isEnabled'] as bool?,
      isKioskEnabled: json['isKioskEnabled'] as bool?,
      isKioskOpen: json['isKioskOpen'] as bool?,
      isOrderStatusDisabled: json['isOrderStatusDisabled'] as bool?,
      isVisible: json['isVisible'] as bool?,
    );

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
      'id': instance.id,
      'squareId': instance.squareId,
      'name': instance.name,
      'address': instance.address,
      'shortAddress': instance.shortAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'imgUrl': instance.imgUrl,
      'openingHoursSystem': instance.openingHoursSystem,
      'marketName': instance.marketName,
      'marketDisplayName': instance.marketDisplayName,
      'geoName': instance.geoName,
      'currency': instance.currency,
      'isEnabled': instance.isEnabled,
      'isKioskEnabled': instance.isKioskEnabled,
      'isKioskOpen': instance.isKioskOpen,
      'isOrderStatusDisabled': instance.isOrderStatusDisabled,
      'isVisible': instance.isVisible,
    };
