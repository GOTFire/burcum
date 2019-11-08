import 'package:flutter/material.dart';
import 'burc_detay.dart';
import 'burc_listesi.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burc Uygulaması",
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: "/",
      routes: {"/": (context) => BurclarListesi()},
      onGenerateRoute: (RouteSettings settings) {
        List<String> yollar = settings.name
            .split("/"); // detayBurc/$indeks şeklinde gelen veriyi ayrıştır

        if (yollar[1] == "detayBurc") {
          return MaterialPageRoute(builder: (context) => BurcDetay(int.parse(yollar[2])));
        }
       return null ;
      },
    );
  }
}
