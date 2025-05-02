import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke/constants/ui_helper.dart';
import 'package:poke/model/pokemon_model.dart';
import 'package:poke/widges/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, required this.p1});

  PokemonModel p1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(p1.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              iconSize:
                  ScreenUtil().orientation == Orientation.portrait
                      ? 26.h
                      : 26.w,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            PokeTypeName(p1: p1),
          ],
        ),
      ),
    );
  }
}
