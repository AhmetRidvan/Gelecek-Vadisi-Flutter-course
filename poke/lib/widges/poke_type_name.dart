import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke/model/pokemon_model.dart';

class PokeTypeName extends StatelessWidget {
  PokeTypeName({super.key, required this.p1});
  PokemonModel p1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(p1.name! ?? '', style: TextStyle(fontSize: 30.sp)),
            Text('#${p1.num}'),
          ],
        ),
        SizedBox(height: 0.03.sh),
        Chip(label: Text(p1.type!.join('-'))),
      ],
    );
  }
}
