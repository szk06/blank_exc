import 'package:flutter/material.dart';

class SliverBoxAdapter extends StatelessWidget {
  const SliverBoxAdapter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).hintColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          height: 4,
          width: 40,
          margin: const EdgeInsets.only(top: 10, bottom: 4),
        ),
      ),
    );
  }
}
