import 'package:flutter/material.dart';

class ScrollableHeader extends StatelessWidget {
  final VoidCallback onSearchPressed;

  const ScrollableHeader({super.key, required this.onSearchPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Scrollable Header",
        ),
        IconButton(onPressed: onSearchPressed, icon: Icon(Icons.search))
      ],
    );
  }
}
