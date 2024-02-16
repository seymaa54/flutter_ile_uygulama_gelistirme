import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUyg(),
  );
}

// BenimUyg adında stateless tipinde bir widget oluşturuldu
class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.lime,
          // safeArea ile arayüz içerikleri korunabilir
          body: SafeArea(
            child: Container(
              // body içinde bir container widgeti eklendi
              // container widget pozisyon ve dekorasyon özellikleri incelendi.
              // container center transform wrap
              // transform: Matrix4.rotationZ(-0.2),  sol köşe
              alignment: Alignment.bottomLeft,
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.green,
                borderRadius: BorderRadiusDirectional.circular(16.0),
              ),
              // EdgeInsets.all her dört yönden aynı mesafe
              // EdgeInsets.only belirtilen taraflar için
              margin: EdgeInsets.all(25.0), // dış ayarlama
              padding: EdgeInsets.all(25.0),// iç
              child: Transform( transform: Matrix4.rotationZ(-0.5),
                  //dönme ekseni merkeze alınır .
                  alignment: FractionalOffset.center,
                  child: Text('kod planet')),
            ),
          )),
    );
  }
}
