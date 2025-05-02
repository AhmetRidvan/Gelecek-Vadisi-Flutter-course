import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  static TextStyle titleStyle() {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle pokemonName() {
    return TextStyle(
      fontSize: calculateFontSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static TextStyle chipStyle() {
    return TextStyle(
      fontSize: calculateFontSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }

  static double calculateFontSize(int x) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return x.sp;
    } else {
      return (x * 1.5);
    }
  }
}
