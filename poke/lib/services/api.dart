import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:poke/model/pokemon_model.dart';

class GetData {
  static final _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> get() async {
    List<PokemonModel> lis = [];
    final res = await Dio().get(_url);
    final fi = jsonDecode(res.data)['pokemon']; //12:35

    if (fi is List) {
      lis =
          fi.map((e) {
            return PokemonModel.fromJson(e);
          }).toList();
    } else {
      return [];
    }

    print(lis.first.id);
    return lis;
  }
}
