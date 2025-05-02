import 'package:burclar/model/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  BurcDetay({required this.b1, super.key});

  BurcModel b1;

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color xColor = Colors.red;
  late PaletteGenerator p1;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      return findAppBarColor();
    });
    super.initState();
  }

  void findAppBarColor() async {
    p1 = await PaletteGenerator.fromImageProvider(
      AssetImage('images/${widget.b1.burcBuyukResim}'),
    );
    setState(() {
      xColor = p1.vibrantColor!.color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            backgroundColor: xColor,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                widget.b1.burcAdi + ' Burcu ve özellikleri',
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.copyWith(color: Colors.white),
              ),
              background: Image.asset(
                'images/${widget.b1.burcBuyukResim}',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Text(
                  widget.b1.burcDetayi,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/*
Column(
          children: [
            Text(b1.burcAdi),
            Text(b1.burcDetayi),
            Text(b1.burcTarihi),
          ],
        ),
*/
