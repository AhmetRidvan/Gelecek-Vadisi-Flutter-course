import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UiHelper {
  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.12.sh : 0.12.sw;
  }

  static EdgeInsets pad() {
    return EdgeInsets.all(7.w);
  }

  static pokeAndImageSize() {
    if (ScreenUtil().orientation == Orientation.landscape) {
      return 0.4.sh;
    } else {
      return 0.2.sw;
    }
  }

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent,
  };

  static getColorFromType(String x) {
    if (_typeColorMap.containsKey(x)) {
      return _typeColorMap[x] ?? Colors.red;
    } else {
      return Colors.pink;
    }
  }
}
