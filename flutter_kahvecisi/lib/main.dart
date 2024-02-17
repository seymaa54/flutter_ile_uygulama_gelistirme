import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //  bu kısım tüm uygulama için geçerli olur
        // theme: ThemeData(fontFamily: 'Satisfy'),
        home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown,
        body: Center(
          child: Column(
            // column widgetinda her elemanın min yer kaplaması sağlandı
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              //image dosyasını otomatik olarak daire içinde çizer
              CircleAvatar(
                backgroundImage: AssetImage('images/caf.jfif'),
                radius: 60,
              ),
              Text('Flutter Kahvecisi',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.brown[950],
                    fontFamily: ('Satisfy'),
                  )),
              Text('BİR FİNCAN UZAĞINIZDA',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  )),

              Container(
                height: 30,
                child: Divider(height: 80, color: Colors.brown),
              ),
              Card(
                margin: EdgeInsets.only(left: 43.0, right: 43.0),
                // card widget padding almıyor
                //  padding: EdgeInsets.all(4.0),
                color: Colors.black26,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 38,
                  ),
                  title: Text(
                    'siparis@fkahvecisi.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 25), // card widgetlar arasındaki boşluğu ifade eder

              Card(
                  margin: EdgeInsets.only(left: 43.0, right: 43.0),
                  // padding: EdgeInsets.all(4.0),
                  color: Colors.black26,
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 35,
                      ),
                      title: Text(
                        '+90 555 55 55',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ))),
            ],
          ),
        ),
      ),
    ));
  }
}
