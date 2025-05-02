import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poke/constants/ui_helper.dart';
import 'package:poke/model/pokemon_model.dart';

class PokeAndImage extends StatelessWidget {
  PokeAndImage({super.key, required this.p1});
  PokemonModel p1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            'images/icons8-osu-1600.png',
            width: UiHelper.pokeAndImageSize(),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            errorWidget: (context, url, error) {
              return Icon(Icons.abc_outlined);
            },
            imageUrl: p1.img! ?? '',
            width: UiHelper.pokeAndImageSize(),
            placeholder: (context, url) {
              return CircularProgressIndicator();
            },
          ),
        ),
      ],
    );
  }
}
