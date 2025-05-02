import 'package:burclar/burc_item.dart';
import 'package:burclar/data/strings.dart';
import 'package:burclar/model/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  List<BurcModel> tumBurclar = []; //9:40
  BurcListesi() {
    tumBurclar = dataSource();
    print(tumBurclar);
    super.key;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Burçlar listesi')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return BurcItem(b1: tumBurclar[index]);
        },
        itemCount: tumBurclar.length,
      ),
    );
  }

  List<BurcModel> dataSource() {
    List<BurcModel> gecici = [];
    for (int x = 0; x < 12; x++) {
      var burcAdi = Strings.BURC_ADLARI[x];
      var burcTarihi = Strings.BURC_TARIHLERI[x];
      var burcGenelOzellikleri = Strings.BURC_GENEL_OZELLIKLERI[x];
      var burcKucukResim = burcAdi.toLowerCase() + '${x + 1}.png';
      var burcBuyukResim = burcAdi.toLowerCase() + '_buyuk${x + 1}.png';
      BurcModel b1 = BurcModel(
        burcAdi,
        burcTarihi,
        burcGenelOzellikleri,
        burcKucukResim,
        burcBuyukResim,
      );
      gecici.add(b1);
    }
    return gecici;
  }
}
