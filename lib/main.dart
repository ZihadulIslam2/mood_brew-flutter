import 'package:flutter/material.dart';

void main () {
  runApp( const MoodBrewApp());
}

class MoodBrewApp extends StatelessWidget {
  const MoodBrewApp({ super.key })

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood Brew',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        scaffoldBackgroundColor: Colors.brown[50],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'Roboto', color: Colors.brown),
        ),
      ),
    home: const HomeScreen(),
    debugShowCheckedModeBanner: false,
    );
  }
}