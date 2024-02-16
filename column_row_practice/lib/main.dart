import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // main axiss:dikey cross:yatay
            // elemanlarımız dikeyde sıralanıyorken yatayda yani (cross)diğer eksende
            // uzatmak istiyoruz
            crossAxisAlignment: CrossAxisAlignment.stretch,
            //ana eksende eşit olarak yerleştirmek istiyoruz veya sizedBox kullanılır.
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //   SizedBox(height: 100),
              Container(
                color: Colors.white,
                child: Text('1.container'),
                height: 100,
              ),
              //    SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.lime,
                  )
                ],
              ),
              //     SizedBox(height: 100,),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}

