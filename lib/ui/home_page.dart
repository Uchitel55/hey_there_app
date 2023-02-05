import 'package:flutter/material.dart';
import 'package:hey_there_app/resources/app_strings.dart';
import 'package:hey_there_app/utils/color_generator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? backgroundColor;

  @override
  void didChangeDependencies() {
    _setRandomColor();
    super.didChangeDependencies();
  }

  void _setRandomColor() {
    setState(() {
      backgroundColor = generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _setRandomColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: const Center(
          child: Text(
            AppStrings.heyThere,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
