import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BenimUyg());
}

class BenimUyg extends StatelessWidget {
  const BenimUyg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BUGÜN NE YESEM?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

// stateless widget da build yalnızca bir kez çalışır

// widget'ın durumu (state) ayrı bir sınıf olan State sınıfında tutulur.

/*stateful widget:yapmak istenilen değişiklik setstateful ile
* belirtilir.
* daha sonra mevcut state ile bizden istenen state arasında fark var mı bakılır
* bu durumda build metodu tekrar çalışır*/

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNum = 1;

  int yNum = 1;

  int tNum = 1;

  void imageYenile() {
    setState(() {
      // dart:math kütüphanesini import ediyoruz
      // 1-5 arasında rastgele sayı üretcek fonksiyon tanımlandı
      corbaNum = Random().nextInt(5) + 1;
      yNum = Random().nextInt(5) + 1;
      tNum = Random().nextInt(5) + 1;
    });
  }

  //yemek adlarını dinamik bir şekilde kullanmak için list tanımlıyoruz
  List<String> corbaAdlari = [
    'Mercimek',
    'Yoğurt',
    'Tavuk',
    'Domates',
    'Düğün'
  ];
  List<String> yemekAdlari = [
    'Mantı',
    'İçliköfte',
    'Karnıyarık',
    'Balık',
    'Makarna'
  ];
  List<String> tatliAdlari = [
    'Cheescake',
    'Baklava',
    'Suffle',
    'Magnolia',
    'Tiramisu'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          // expanded özelliğinin çalışabilmesi için paddingleri expanded içinde veriyoruz

          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                // her bir image ı tıklanabilir hale getirmek için
                // (textbutton)flatbutton ile wrap işlemi uyguladık
                child: TextButton(
                  style: ButtonStyle(
                    //tıklanınca oluşan renk tranpsaran yapıldı
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: imageYenile,
                  // anonim bir fonksiyon :sadece burada kullanılacak

                  //hot reload değil hot restart kullanmak daha güvenli

                  // değişken interpolasyon
                  child: Image.asset(
                    'images/corba_$corbaNum.jfif',
                  ),
                )),
          ),
          Text(
            corbaAdlari[corbaNum - 1],
            style: TextStyle(fontSize: 16),
          ),
          Container(
              width: 180,
              child: Divider(
                height: 3,
                color: Colors.grey,
              )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
              style: ButtonStyle(
                overlayColor: MaterialStatePropertyAll(Colors.transparent),
              ),
              // imageYenile() kullanımı hatalı
              onPressed: imageYenile,
              child: Image.asset(
                'images/y_$yNum.jfif',
              ),
            ),
          )),
          Text(
            yemekAdlari[yNum - 1],
            style: TextStyle(fontSize: 16),
          ),
          Container(
              width: 180,
              child: Divider(
                height: 3,
                color: Colors.grey,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                ),
                onPressed: imageYenile,
                child: Image.asset('images/tatlı_$tNum.jfif'),
              ),
            ),
          ),
          Text(
            tatliAdlari[tNum - 1],
            style: TextStyle(fontSize: 16),
          ),
          Container(
              width: 180,
              child: Divider(
                height: 3,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
