import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke/constants/constants.dart';
import 'package:poke/model/pokemon_model.dart';
import 'package:poke/services/api.dart';
import 'package:poke/widges/items.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _PokemonListState();
}

class _PokemonListState extends State<ListViewBuilder> {
  late Future<List<PokemonModel>> p1;
  @override
  void initState() {
    p1 = GetData.get();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: p1,
      builder: (context, snapshot) {
        if (snapshot.hasData || snapshot.data != null) {
          final x = ScreenUtil().orientation == Orientation.landscape ? 4 : 2;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: x,
            ),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return Items(p1: item);
            },
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("Fail"));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
