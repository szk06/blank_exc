import 'dart:math';

class LocationUtil {
  double calculateDistanceInMiles(
      double srcLat, double srcLong, double destLat, double destLong) {
    const double earthRadius = 3958.8; // Radius of Earth in miles

    double dLat = _degreesToRadians(destLat - srcLat);
    double dLon = _degreesToRadians(destLong - srcLong);

    double a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_degreesToRadians(srcLat)) *
            cos(_degreesToRadians(destLat)) *
            sin(dLon / 2) *
            sin(dLon / 2);

    double c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c;
  }

  double _degreesToRadians(double degrees) {
    return degrees * pi / 180;
  }
}
