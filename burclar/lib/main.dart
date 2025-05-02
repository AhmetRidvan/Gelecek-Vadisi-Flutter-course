import 'package:burclar/burc_detay.dart';
import 'package:burclar/burc_listesi.dart';
import 'package:burclar/model/burc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.yellowAccent,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: BurcListesi(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => BurcListesi());
          case '/burcDetay':
            final x = settings.arguments as BurcModel;
            return MaterialPageRoute(builder: (context) => BurcDetay(b1: x));
        }
      },
    );
  }
}
