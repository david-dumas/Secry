import 'dart:math';

import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:secry/util/colors/hex_color_helper.dart';

void main() {
  /// Test if its possible to get hexCode from MaterialColor
  test('Should return hexCode value of Colors.red', () {
    final redColor = Colors.red;
    final hexCodeColor = redColor.toHex();
    expect(hexCodeColor, "#fff44336");
  });

  test('Should return Color object of Colors.red when passing hexColor', () {
    final colorToHex = Colors.red.toHex();
    final colorFromHex = HexColor.fromHex(colorToHex);
    expect(colorFromHex, Color(0xfff44336));
  });
}
