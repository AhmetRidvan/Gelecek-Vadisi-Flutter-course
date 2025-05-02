import 'package:flutter/material.dart';
import 'package:poke/widges/app_title.dart';
import 'package:poke/widges/listbui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Column(
            children: [AppTitle(), Expanded(child: ListViewBuilder())],
          );
        },
      ),
    );
  }
}
