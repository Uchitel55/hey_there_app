import 'package:flutter/material.dart';
import 'package:hey_there_app/resources/app_strings.dart';
import 'package:hey_there_app/utils/color_generator.dart';

/// The class is a StatefulWidget and is used to create a UI
/// for the home page of an application
class HomePage extends StatefulWidget {
  /// Constructor
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color? backgroundColor;

  /// The method _setRandomColor is being called in didChangeDependencies
  /// to update the backgroundColor state to a new random color whenever
  /// the dependencies of the widget change.
  /// This is to ensure that the background color is updated whenever
  /// the dependencies change and not just when the widget is first created
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
