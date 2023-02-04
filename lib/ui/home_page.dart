import 'package:flutter/material.dart';

import '../utils/color_generator.dart';

const String _heyThere = 'Hey There';

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
            _heyThere,
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
