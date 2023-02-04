import 'dart:math';

import 'package:flutter/material.dart';

const int _maxChannelValue = 256;

Color generateRandomColor() {
  return Color.fromRGBO(
    _generateChannelValue(),
    _generateChannelValue(),
    _generateChannelValue(),
    1,
  );
}

int _generateChannelValue() => Random().nextInt(_maxChannelValue);
