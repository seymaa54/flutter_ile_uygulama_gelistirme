import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constansts.dart';

class IconCinsiyet extends StatelessWidget {

  //burada tanımladığımız değerlere atanacak
  IconData icon;
  String text;

  // bu classtan bir nesne yaratıldığı zaman gelen bilgi burada tutulacak.
  IconCinsiyet({required this.icon,required this.text});


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size:50,
          color: Colors.black54,),
        SizedBox(height: 10),
        Text(text,style: kMetinStili)
      ],
    );
  }
}
