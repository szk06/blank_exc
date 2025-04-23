import 'package:blank_excersise/components/design_components/draggable_clip_edge.dart';
import 'package:blank_excersise/components/design_components/sliver_box_adapter.dart';
import 'package:blank_excersise/components/error/center_error_widget.dart';
import 'package:blank_excersise/screens/location_screen/bloc/location_screen_bloc.dart';
import 'package:blank_excersise/screens/location_screen/components/location_card.dart';
import 'package:blank_excersise/screens/location_screen/components/scrollable_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LocationScreenState();
  }
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.chevron_left)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.navigation))],
      ),
      body: BlocProvider(
        create: (_) => LocationScreenBloc()..add(LoadData()),
        child: _LocationScreenBuilder(),
      ),
    );
  }
}

class _LocationScreenBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationScreenBloc, LocationScreenState>(
      builder: (context, state) {
        switch (state.status) {
          case LocationScreenStateStatus.initial:
            return Center(
              child: CircularProgressIndicator(),
            );
          case LocationScreenStateStatus.loading:
            return Center(
              child: CircularProgressIndicator(),
            );
          case LocationScreenStateStatus.error:
            return CenterErrorWidget(
              apiError: state.error!,
              onTryAgain: () {
                context.read<LocationScreenBloc>().add(LoadData());
              },
            );
          case LocationScreenStateStatus.loaded:
            return Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                        child: Container(
                            height: double.infinity,
                            color: Theme.of(context).primaryColor)),
                  ],
                ),
                DraggableScrollableSheet(
                    maxChildSize: 0.95,
                    minChildSize: 0.5,
                    initialChildSize: 0.5,
                    builder: (BuildContext context, scrollController) {
                      return DraggableClipEdge(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: CustomScrollView(
                          controller: scrollController,
                          slivers: [
                            SliverBoxAdapter(),
                            SliverList.list(children: [
                              ScrollableHeader(),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "${state.totalResults} results nearby",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              ...state.locations.map(
                                (locationItem) => LocationCard(
                                  location: locationItem,
                                  onSelect: (location) {},
                                ),
                              ),
                            ])
                          ],
                        ),
                      ));
                    })
              ],
            );
        }
      },
    );
  }
}
