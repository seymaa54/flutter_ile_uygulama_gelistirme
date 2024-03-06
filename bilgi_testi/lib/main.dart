import 'package:bilgi_testi/TestVeri1.dart';
import 'package:flutter/material.dart';

import 'constansts.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.blueAccent,
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  //kullanıcını verdiği yanıtlara göre sonuçların tutulacaği liste
  List<Widget> secimler = [];

  TestVeri1 testVeri1 = TestVeri1();

  void butonFonksiyonu(String secilenButon) {
    if(testVeri1.testBittiMi()==true){
print('test bititi');
print(testVeri1.soruIndex);
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Test Bitti'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pop(); // Kapatma işlemi
                      secimler=[];
                      testVeri1.testiSifirla();

                    });
                  },
                  child: Text('Başa Dön'),
                ),
              ],
            );
          },
        );
    }
    else{
      setState(() {
        // testVeri_1.soruBankasi[soruIndex].soruYaniti== true
        testVeri1.getSoruYanit() == secilenButon
            ? secimler.add(kDogruIcon)
            : secimler.add(kYanlisIcon);
        // bu kısımdan testveri classı sorumlu olmalı
        // soruIndex++;
        testVeri1.indexArttir();
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                testVeri1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          children: secimler,
          // yatay bosluk
          spacing: 3,
          runSpacing: 2,
          //sondan/merkezden baslayarak hizalama
          alignment: WrapAlignment.start,
          // direction: Axis.horizontal,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[400],
                              padding: EdgeInsets.all(12),
                              textStyle: const TextStyle(
                                color: Colors.white,
                              )),
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            butonFonksiyonu('false');
                          },
                        ))),
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 6),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[400],
                            padding: EdgeInsets.all(12),
                            textStyle: const TextStyle(
                              color: Colors.white,
                            )),
                        child: Icon(Icons.thumb_up, size: 30.0),
                        onPressed: () {
                          //anonim fonksiyon şeklinde kullanılmak zorunda
                          butonFonksiyonu('true');
                        },
                      )),
                )
              ])),
        ),
      ],
    );
  }
}
