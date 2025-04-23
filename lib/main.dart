import 'package:blank_excersise/screens/location_screen/location_screen.dart';
import 'package:blank_excersise/services/location_service.dart';
import 'package:blank_excersise/user_location/user_location_handler.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blank Exercise',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: UserLocation().requestUserLocation(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {

          return const LocationScreen();
        }
      },
    );
  }
}
