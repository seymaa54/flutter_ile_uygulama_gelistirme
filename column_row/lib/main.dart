import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygRow());
}

// iki eksen bulunur:main axis ve cross axis
class BenimUygColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        // column widget =multichild
        // <Widget>[] elemanları widgetlardan oluşan bir diziyi(list) ifade eder
        body: SafeArea(
          child: Column(
            // DİKEYDE SIRALAMA
            // main axis dikeyde çalışır cross axis yatayda
            // column widgetin kendi çocuklarına söyledikleri :)
            // iki eksen bulunur

            //column widget ın alanı kadar yer kaplaması için
            //  mainAxisSize: MainAxisSize.min,

            // column widget alignment özellikleri
            //  mainAxisAlignment:MainAxisAlignment.start, yukarıdan aşagı diz
            // mainAxisAlignment:MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.center,

            // elemanlar arasında eşit boşluk bırakarak dağıtma
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // baş ve sondaki elemanları yaslama
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,

            // column widget ters çevirme
            //verticalDirection: VerticalDirection.up,

            // crossAxisAlignment Row veya Column içindeki çocuk widget'ların,
            // diğer eksen (cross-axis) üzerindeki hizalamasını belirtir.
            // bu özellik  column widget alanı kadar etkili olur
            //crossAxisAlignment: CrossAxisAlignment.center,

            // tüm widgetları ekran kadar genişletme
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Container(
                color: Colors.white,
                width: 200,
                height: 100,
                child: Text('1.Container'),
              ),
              // boşlukları kontrol etmek için sized box kullanılır
              SizedBox(height: 20),
              Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                child: Text('2.Container'),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.pink,
                width: 200,
                height: 100,
                // manuel olarak margin verilebilir
                //  margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Text('3.Container'),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.green,
                width: double.infinity,
                child: Text('4.Container'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BenimUygRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        // main axis yatayda çalışır cross axis dikeyde
        body: SafeArea(
          child: Row(
            // YATAY SIRALAMA
            // column widget için geçerli olan özellikleri içerir
            crossAxisAlignment: CrossAxisAlignment.stretch, // stretch:uzatmak

            // elamanları eşit olarak dağıtma
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.white,
                // width: 200,
                child: Text('1.Container'),
              ),
              // boşlukları kontrol etmek için sized box kullanılır veya spaceEvenly
              SizedBox(width: 18), // sizedbox için width değerine atama yaparız
              Container(
                color: Colors.blue,
                child: Text('2.Container'),
              ),
              SizedBox(width: 18),
              Container(
                color: Colors.pink,
                // manuel olarak margin verilebilir
                //  margin: EdgeInsets.symmetric(vertical: 20.0),
                child: Text('3.Container'),
              ),
              SizedBox(width: 18),
              Container(
                color: Colors.green,

                //  width: double.infinity,
                child: Text('4.Container'),
              ),
              // row widget a column widget ekleyelim
              Column(
                //mainAxisAlignment:MainAxisAlignment.spaceEvenly,
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.brown,
                    child: Text('1.satır'),
                    width: 40,
                    height: 50,
                  ),
                  Container(
                    color: Colors.lime,
                    width: 40,
                    height: 50,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
