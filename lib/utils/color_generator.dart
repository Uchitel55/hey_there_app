import 'dart:math';

import 'package:flutter/material.dart';

/// 256 is used because the RGB color system uses 8-bit channels,
/// meaning each channel can have a value between 0 and 255 inclusive
const int _maxChannelValue = 256;

/// Function that generates a random color value in the RGB color model
Color generateRandomColor() {
  return Color.fromRGBO(
    _generateChannelValue(),
    _generateChannelValue(),
    _generateChannelValue(),
    1,
  );
}

/// Generates a random integer value
int _generateChannelValue() => Random().nextInt(_maxChannelValue);
