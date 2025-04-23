import 'package:flutter/material.dart';

class ScrollableHeader extends StatelessWidget {
  const ScrollableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Scrollable Header",
      ),
    );
  }
}
