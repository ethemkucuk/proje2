import 'package:flutter/material.dart';
import 'package:flutter_burclar_rehberi/strings.dart';

import 'burc_detay.dart';
import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late final List<Burc> burcListesi;

  BurcListesi() {
    burcListesiniOlustur();
  }

  burcListesiniOlustur() {
    burcListesi = List.generate(Strings.BURC_ADLARI.length, (index) {
      print("Liste Oluşturuldu");
      var burcAdi = Strings.BURC_ADLARI[index];
      var burcTarihleri = Strings.BURC_TARIHLERI[index];
      var burcGenelOzellikleri = Strings.BURC_GENEL_OZELLIKLERI[index];
      var burcKucukResimAdresi =
          "images/${burcAdi.toLowerCase()}${index + 1}.png";
      var burcBuyukResimAdresi =
          "images/${burcAdi.toLowerCase()}_buyuk${index + 1}.png";
      return Burc(burcAdi, burcTarihleri, burcGenelOzellikleri,
          burcKucukResimAdresi, burcBuyukResimAdresi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          var burc = burcListesi[index];
          print("Liste Çağrıldı");
          return Card(
            margin: EdgeInsets.all(5),
            color: Color.fromARGB(255, 162, 200, 233),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BurcDetay(secilenBurc: burc),
                  ),
                );
              },
              leading: Image(
                image: AssetImage(burc.burcKucukResimAdresi),
              ),
              title: Text(burc.burcAdi),
              subtitle: Text(burc.burcTarihleri),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.pink,
              ),
            ),
          );
        },
        itemCount: burcListesi.length,
      ),
    );
  }
}
