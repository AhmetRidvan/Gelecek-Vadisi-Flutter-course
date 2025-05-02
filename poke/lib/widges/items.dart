import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke/constants/constants.dart';
import 'package:poke/constants/ui_helper.dart';
import 'package:poke/model/pokemon_model.dart';
import 'package:poke/pages/detail_page.dart';
import 'package:poke/widges/image_poke.dart';

class Items extends StatelessWidget {
  Items({super.key, required this.p1});
  PokemonModel p1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(p1: p1);
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        shadowColor: Colors.white,
        color: UiHelper.getColorFromType(p1.type![0]),
        child: Padding(
          padding: UiHelper.pad(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(p1.name ?? 'Nothing', style: Constants.pokemonName()),
              Chip(label: Text(p1.type![0], style: Constants.chipStyle())),
              Expanded(child: PokeAndImage(p1: p1)),
            ],
          ),
        ),
      ),
    );
  }
}
