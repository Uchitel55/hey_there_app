import 'package:flutter/material.dart';
import 'package:hey_there_app/ui/home_page.dart';

/// MaterialApp sets up the basic structure of an application
/// and creates a base for building other widgets
class HeyThereApp extends StatelessWidget {
  /// Constructor
  const HeyThereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
