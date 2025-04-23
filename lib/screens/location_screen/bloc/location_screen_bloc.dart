import 'package:blank_excersise/models/location/location.dart';
import 'package:blank_excersise/networking/api_error.dart';
import 'package:blank_excersise/services/location_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'location_screen_event.dart';

part 'location_screen_state.dart';

class LocationScreenBloc
    extends Bloc<LocationScreenEvent, LocationScreenState> {
  LocationScreenBloc() : super(LocationScreenState()) {
    on<LoadData>(_loadData);
    on<OnSearchQueryChange>((event, emit) {
      emit(state.copyWith(
        search: event.searchQuery,
      ));
    });
    on<OnViewMore>((event, emit) {
      if (state.fetchedLocations == null ||
          state.displayedLocationsCount >= state.fetchedLocations!.length) {
        return;
      }
      int newCount = state.displayedLocationsCount + 10;
      if (newCount > state.fetchedLocations!.length) {
        newCount = state.fetchedLocations!.length;
      }
      emit(state.copyWith(
        displayedLocationsCount: newCount,
      ));
    });
  }

  Future<void>? _loadData(
      LoadData event, Emitter<LocationScreenState> emit) async {
    emit(state.copyWith(status: LocationScreenStateStatus.initial));
    return LocationService().listLocations()?.then((resp) {
      emit(state.copyWith(
        status: LocationScreenStateStatus.loaded,
        fetchedLocations: resp,
      ));
    }).catchError((error, trace) {
      print("traceError: $trace");
      emit(state.copyWith(
          status: LocationScreenStateStatus.error, error: error));
    });
  }
}
