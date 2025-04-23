import 'package:blank_excersise/models/opening_hours/opening_hours.dart';
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
    required double latitude,
    required double longitude,
    String? imgUrl,
    Map<String,OpeningHours>? openingHoursSystem,
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
}