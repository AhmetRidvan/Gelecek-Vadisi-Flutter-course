import 'package:calculate_dynamic_average/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ShowAverage extends StatelessWidget {
  const ShowAverage({
    required this.average,
    required this.numberOfLessons,
    super.key,
  });
  final double average;
  final int numberOfLessons;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          numberOfLessons > 0
              ? numberOfLessons.toString() + ' lessons'
              : 'Pick your lesson',
          style: Constants.style.copyWith(fontSize: 17),
        ),
        Text(
          average >= 0 ? average.toStringAsFixed(2) : '0.0',
          style: Constants.style.copyWith(fontSize: 55),
        ), //3:22
        Text('Average', style: Constants.style.copyWith(fontSize: 15)),
      ],
    );
  }
}
