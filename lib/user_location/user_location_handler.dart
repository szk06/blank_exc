import 'package:location/location.dart';

class UserLocation {
  static final UserLocation _userLocation = UserLocation._internal();
  LocationData? currentUserLocation;

  UserLocation._internal();

  factory UserLocation() {
    return _userLocation;
  }

  Future<void> requestUserLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    currentUserLocation = await location.getLocation();
    location.onLocationChanged.listen((LocationData currentLocation) {
      currentUserLocation = currentLocation;
    });
  }
}
