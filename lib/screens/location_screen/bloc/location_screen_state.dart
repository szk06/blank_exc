part of 'location_screen_bloc.dart';

enum LocationScreenStateStatus {
  initial,
  loading,
  error,
  loaded,
}

class LocationScreenState extends Equatable {
  final String? search;
  final List<Location>? fetchedLocations;
  final LocationScreenStateStatus status;
  final APIError? error;
  final int displayedLocationsCount;
  final bool isSearching;

  const LocationScreenState(
      {this.search,
      this.fetchedLocations,
      this.isSearching = false,
      this.displayedLocationsCount = 10,
      this.status = LocationScreenStateStatus.initial,
      this.error});

  LocationScreenState copyWith({
    String? search,
    List<Location>? fetchedLocations,
    LocationScreenStateStatus? status,
    int? displayedLocationsCount,
    bool? isSearching,
    APIError? error,
  }) {
    return LocationScreenState(
      search: search ?? this.search,
      fetchedLocations: fetchedLocations ?? this.fetchedLocations,
      status: status ?? this.status,
      displayedLocationsCount:
          displayedLocationsCount ?? this.displayedLocationsCount,
      isSearching: isSearching ?? this.isSearching,
      error: error ?? this.error,
    );
  }

  List<Location> get filteredLocations {
    if (search == null || search!.isEmpty) {
      return fetchedLocations ?? [];
    } else {
      return fetchedLocations
              ?.where((location) =>
                  location.name.toLowerCase().contains(search!.toLowerCase()))
              .toList() ??
          [];
    }
  }

  List<Location> get locations {
    List<Location> locationsToDisplay = filteredLocations;
    return locationsToDisplay.sublist(
        0,
        displayedLocationsCount > locationsToDisplay.length
            ? locationsToDisplay.length
            : displayedLocationsCount);
  }

  bool get showViewMore {
    return filteredLocations.length > displayedLocationsCount;
  }

  int get totalResults {
    return filteredLocations.length;
  }

  @override
  List<Object?> get props => [
        search,
        fetchedLocations,
        status,
        isSearching,
        displayedLocationsCount,
        error,
      ];
}
