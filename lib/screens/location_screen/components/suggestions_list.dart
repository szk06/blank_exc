import 'package:flutter/material.dart';

class SuggestionsList extends StatelessWidget {
  final Function(String) onSuggestionSelected;
  final List<String> suggestions = [
    "New York",
    "Washington",
    "Boston",
  ];

  SuggestionsList({
    super.key,
    required this.onSuggestionSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text('Suggestions '),
        ),
        Column(
          children: [
            for (var suggestion in suggestions)
              ListTile(
                title: Text(suggestion),
                onTap: () {
                  onSuggestionSelected(suggestion);
                },
              ),
          ],
        ),
      ],
    );
  }
}
