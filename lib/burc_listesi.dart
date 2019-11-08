import 'package:burcum/burc.dart';
import 'package:burcum/utils/strings.dart';
import 'package:flutter/material.dart';

class BurclarListesi extends StatelessWidget {
   static List<Burc> tumBurclar;

  @override
  Widget build(BuildContext context) {
    tumBurclar = verileriAl();
    return Scaffold(
      appBar: AppBar(
        title: Text("Baslık başa"),
      ),
      body: listeYaratici(),
    );
  }

  List<Burc> verileriAl() {
    List<Burc> gecici = [];

    for (int m = 0; m < 12; m++) {
      String geciciBuyukResim;
      String geciciKucukResim;

      geciciKucukResim = Strings.BURC_ADLARI[m].toLowerCase() + "${m + 1}.png";
      geciciBuyukResim =
          Strings.BURC_ADLARI[m].toLowerCase() + "_buyuk${m + 1}.png";

      //debugPrint(geciciBuyukResim);
      //Burc eklenecek = Burc(Strings.BURC_ADLARI[m], Strings.BURC_TARIHLERI[m], Strings.BURC_GENEL_OZELLIKLERI[m], geciciBuyukResim, geciciKucukResim);

      gecici.add(Burc(
          Strings.BURC_ADLARI[m],
          Strings.BURC_TARIHLERI[m],
          Strings.BURC_GENEL_OZELLIKLERI[m],
          geciciBuyukResim,
          geciciKucukResim));
    }
    return gecici;
  }

  Widget listeYaratici() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return satirDuzeni(context, index);
      },
      itemCount: tumBurclar.length,
    );
  }

  Widget satirDuzeni(BuildContext context, indeks) {
    Burc oAnkiElelman = tumBurclar[indeks];
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: ()=> Navigator.pushNamed(context, "/detayBurc/$indeks"),
        title: Text(oAnkiElelman.Adi),
        subtitle: Text(oAnkiElelman.Tarihi),
        leading: Image.asset("images/" + oAnkiElelman.kucukResim),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
