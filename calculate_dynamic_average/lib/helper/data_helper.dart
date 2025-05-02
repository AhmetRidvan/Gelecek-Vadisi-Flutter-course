import 'package:calculate_dynamic_average/model/lessonModel.dart';
import 'package:flutter/material.dart';

class DataHelper {
  static List<Lessonmodel> l1 = [];

  static void addItem(Lessonmodel l2) {
    l1.add(l2);
  }

  static double findAverage() {
    double toplamNot = 0; //24
    double toplamKredi = 0; // 8

    l1.forEach((e) {
      toplamNot += (e.creditValue * e.letterValue);
      toplamKredi += (e.creditValue);
    });

    return (toplamNot / toplamKredi);
  }

  static List<String> letters() {
    return ['AA', 'BA', 'BB', 'CB', 'CC', 'DC', 'DD', 'FD', 'FF'];
  }

  static List<int> listGene() {
    return List.generate(10, (index) {
      return (index + 1);
    });
  }

  static double convertLetterToNote(String tex) {
    switch (tex) {
      case 'AA':
        return 4;
      case 'BA':
        return 3.5;
      case 'BB':
        return 3.0;
      case 'CB':
        return 2.5;
      case 'CC':
        return 2;
      case 'DC':
        return 1.5;
      case 'DD':
        return 1.0;
      case 'FD':
        return 0.5;
      case 'FF':
        return 0.0;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<double>> letterOfAllLessons() {
    return letters().map((e) {
      return DropdownMenuItem<double>(
        value: convertLetterToNote(e),
        child: Text(e),
      );
    }).toList();
  }

  static List<DropdownMenuItem<double>> creditsOfAllLessons() {
    return listGene().map((e) {
      return DropdownMenuItem(value: e.toDouble(), child: Text(e.toString()));
    }).toList();
  }
}