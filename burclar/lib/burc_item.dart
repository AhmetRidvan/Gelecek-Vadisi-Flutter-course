import 'package:burclar/burc_detay.dart';
import 'package:burclar/model/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  BurcItem({required this.b1, super.key});

  BurcModel b1;

  @override
  Widget build(BuildContext context) {
    var MyTextStayle = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () {
            Navigator.of(context).pushNamed('/burcDetay',arguments: b1);
          },
          leading: Image.asset('images/${b1.burcKucukResim}'),
          title: Text(b1.burcAdi, style: MyTextStayle.headlineSmall),
          subtitle: Text(b1.burcTarihi, style: MyTextStayle.titleSmall),
          trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black),
        ),
      ),
    );
  }
}
