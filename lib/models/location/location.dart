import 'package:blank_excersise/app_date/utils.dart';
import 'package:blank_excersise/models/opening_hours/opening_hours.dart';
import 'package:blank_excersise/user_location/location_util.dart';
import 'package:blank_excersise/user_location/user_location_handler.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

part 'location.g.dart';

@freezed
abstract class Location with _$Location {
  const Location._();

  const factory Location({
    required String id,
    String? squareId,
    required String name,
    required String address,
    required String shortAddress,
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
    bool? isVisible,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  double? get distanceInMile {
    if (UserLocation().currentUserLocation != null &&
        UserLocation().currentUserLocation!.latitude != null &&
        UserLocation().currentUserLocation!.longitude != null &&
        latitude != null &&
        longitude != null) {
      return LocationUtil().calculateDistanceInMiles(
          UserLocation().currentUserLocation!.latitude!,
          UserLocation().currentUserLocation!.longitude!,
          latitude!,
          longitude!);
    }
    return null;
  }

  String get closingStatus {

    if (openingHoursSystem == null || openingHoursSystem!.isEmpty) {
      return "Closed";
    }

    final now = DateTime.now();
    final today = AppDateUtils().weekdayName(now.weekday);
    final todayHours = openingHoursSystem![today];

    if (todayHours == null) {
      return "Closed";
    }

    try {
      final openTime = AppDateUtils().timeFromString(todayHours.open);
      final closeTime = AppDateUtils().timeFromString(todayHours.close);
      final nowTime = TimeOfDay.fromDateTime(now);

      final nowInMinutes = nowTime.hour * 60 + nowTime.minute;
      final closeInMinutes = closeTime.hour * 60 + closeTime.minute;

      if (nowInMinutes >= closeInMinutes) {
        return "Closed";
      }

      final minutesRemaining = closeInMinutes - nowInMinutes;

      if (minutesRemaining <= 60) {
        return "Closing soon";
      }

      return "Open";
    } catch (e) {
      return "Closed";
    }
  }
}
