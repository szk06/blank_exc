import 'package:freezed_annotation/freezed_annotation.dart';

part 'opening_hours.freezed.dart';

part 'opening_hours.g.dart';


@freezed
abstract class OpeningHours with _$OpeningHours {
  const OpeningHours._();

  const factory OpeningHours({
    required String open,
    required String close,
  }) = _OpeningHours;

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);
}

