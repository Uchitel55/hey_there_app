import 'package:flutter/material.dart';
import 'package:hey_there_app/ui/home_page.dart';

class HeyThereApp extends StatelessWidget {
  const HeyThereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
