import 'package:blank_excersise/models/api_response/ApiResponse.dart';
import 'package:blank_excersise/models/location/location.dart';
import 'package:blank_excersise/services/base_service.dart';

class LocationService extends BaseService {
  LocationService({super.api = "locations"});

  Future<List<Location>>? listLocations() {
    Map<String, dynamic> params = {};
    return requester.get(path: api, params: params)?.then((data) {
      List<Location> locations = ApiResponse<Location>.fromJson(
                  data, (item) => Location.fromJson(item), "locations")
              .data ??
          [];
      return locations;
    });
  }
}
