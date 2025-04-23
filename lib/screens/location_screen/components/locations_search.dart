import 'package:blank_excersise/screens/location_screen/components/suggestions_list.dart';
import 'package:flutter/material.dart';

class LocationsSearch extends StatelessWidget {
  final ValueChanged<String> onSearchConfirmed;
  final VoidCallback onCancel;

  const LocationsSearch(
      {super.key, required this.onCancel, required this.onSearchConfirmed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                onFieldSubmitted: (value) {
                  onSearchConfirmed(value);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: TextButton(
                onPressed: onCancel,
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Cancel'),
              ),
            )
          ],
        ),
        SuggestionsList(onSuggestionSelected: (val) {
          onSearchConfirmed(val);
        })
      ],
    );
  }
}
