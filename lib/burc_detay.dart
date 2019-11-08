import 'package:flutter/material.dart';
import 'burc_listesi.dart';


class BurcDetay extends StatefulWidget {
  int burcNO;
  BurcDetay(this.burcNO);
  Color baskinRenk;



  @override
  _BurcDetayState createState() => _BurcDetayState();
}
class _BurcDetayState extends State<BurcDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + BurclarListesi.tumBurclar[widget.burcNO].buyukResim,
                fit: BoxFit.fill,
              ),
              centerTitle: true,
              title: Text(BurclarListesi.tumBurclar[widget.burcNO].Adi),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              BurclarListesi.tumBurclar[widget.burcNO].Detayi,
              style: TextStyle(fontSize: 21),
            ),
          )
        ],
      ),
    );
  }
}
