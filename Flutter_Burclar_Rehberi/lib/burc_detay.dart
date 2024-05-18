import 'package:flutter/material.dart';

import 'model/burc.dart';

import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    paletteRenginiBul();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: appBarRengi,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.secilenBurc.burcBuyukResimAdresi,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text("${widget.secilenBurc.burcAdi} Burcu ve Özellikleri"),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "${widget.secilenBurc.burcAdi}",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text(
                        "${widget.secilenBurc.burcGenelOzellikleri}",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text("${widget.secilenBurc.burcTarihleri}",
                          style: Theme.of(context).textTheme.subtitle1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void paletteRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage(widget.secilenBurc.burcBuyukResimAdresi),
    );
    appBarRengi = _generator.dominantColor!.color;

    setState(() {});
  }
}
