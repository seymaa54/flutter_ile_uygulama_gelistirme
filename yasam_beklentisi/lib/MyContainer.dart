import 'dart:ui';

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {

  // özelleştirilmiş MyContainer widgetı çağırıldığında
  //zorunlu olmayan ve atama yapmak isteyecğimiz özellikleri
  // constructor içinde belirtiyoruz.
  Color? renk;
  Widget? child;
  void Function()? onPress;

  MyContainer({this.renk,this.child,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.9),
          color: renk ?? Colors.white,
        ),
      ),
    );
  }
}
