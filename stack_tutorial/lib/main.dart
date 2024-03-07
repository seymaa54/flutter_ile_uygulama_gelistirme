import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
          color: Colors.indigoAccent,
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [TurkBayragi(100),],
              //  children: [User('Şeyma')],
              ),
        ));
  }
}

//stack pozisyonlanmamış(positioned) çocukları kadar yer kaplar
class TurkBayragi extends StatelessWidget {
  final  double  g;
  TurkBayragi( this.g);
/*
Bayrak Zemini: height= G,  width: 1.5 x G,
Dış Ay Çapı: 0.5 x G,
Dış Ay top: 0.25 x G,
Dış Ay left: 0.25 x G,
İç Ay Çapı: 0.4 x G,
İç Ay top: 0.3 x G,
İç Ay left: 0.3625 x G,

Yıldız icon boyu: 0.25 x G,
Yıldız left: 0.7 x G,
Yıldız top: 0.375 x G,
 */
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height:g,width:(g * 1.5),color: Colors.red,),

         Positioned(top:0.25*g,left:0.3625*g,child: Container(
           width:0.5*g,
           height: 0.5 * g,
     decoration: BoxDecoration(
         color: Colors.white,
         shape: BoxShape.circle
     ),
         )),

         Positioned(top:0.3*g,left:0.50*g,child: Container(
           width:0.4*g,
          height: 0.4*g,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
          ),
        )),
        Positioned(
          top: 0.32 * g,
          left: 0.9 * g,
          child: Container(
            width: 0.25 * g,
            height: 0.25 * g,
            child: Transform(
              transform: Matrix4.rotationZ(1),
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 0.25 * g,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class User extends StatelessWidget{
  final String name;
  User(this.name);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      child: Stack(
      children: [
        Positioned(
          left: 50,
          child: Container(
            child: Icon(Icons.person,size: 300,
            ),
            width: 300,
            height: 500,
          ),
        ),

        Positioned(
          top: 420,
          left: 126,
          child: Container(
            height:350,width:350,child: Text(name,style: TextStyle(color: Colors.black54,
            decoration: TextDecoration.none,),),),
        ),

        Positioned(
          top: 10,
          left: 320,
          child: Container(
            width: 30,
            height: 30,
            child: Icon(
            Icons.notifications,size: 50,),),
        )


          ],),
    );


}}

