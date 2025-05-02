import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke/constants/constants.dart';
import 'package:poke/constants/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.cyanAccent, Colors.pinkAccent],
        ),
      ),
      height: ScreenUtil().orientation == Orientation.landscape ? 300.h : 140.h,
      width: double.infinity,
      child: Stack(
        //stack widget'a alan vericeksin
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset('images/icons8-osu-1600.png'),
          ),
          Padding(
            padding: UiHelper.pad(),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Pokedex",
                textAlign: TextAlign.center,
                style: Constants.titleStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}