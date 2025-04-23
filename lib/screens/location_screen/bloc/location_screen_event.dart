part of 'location_screen_bloc.dart';

class LocationScreenEvent {}

class LoadData extends LocationScreenEvent {}

class OnSearchQueryChange extends LocationScreenEvent {
  final String searchQuery;

  OnSearchQueryChange({required this.searchQuery});
}

class OnViewMore extends LocationScreenEvent {}
