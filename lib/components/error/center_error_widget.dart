import 'package:blank_excersise/networking/api_error.dart';
import 'package:flutter/material.dart';

class CenterErrorWidget extends StatelessWidget {
  final APIError apiError;
  final VoidCallback onTryAgain;

  const CenterErrorWidget(
      {super.key, required this.apiError, required this.onTryAgain});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            apiError.userMessage,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          ElevatedButton(onPressed: onTryAgain, child: Text('Try Again'))
        ],
      ),
    );
  }
}
