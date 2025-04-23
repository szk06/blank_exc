import 'package:blank_excersise/models/location/location.dart';
import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  final Location location;
  final ValueChanged<Location> onSelect;

  const LocationCard(
      {super.key, required this.location, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 0.5,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            location.imgUrl != null
                ? Image.network(
                    location.imgUrl!,
                    width: 100,
                    height: 100,
                  )
                : const Icon(Icons.location_on, size: 50),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
