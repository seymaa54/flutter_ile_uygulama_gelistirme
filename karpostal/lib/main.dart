import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xffD7E0ff),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mutlu Bayramlar'),
        backgroundColor: Colors.blueGrey[800],
    ),
      body:
      Center(child: Image.asset('images/mutlu_bayramlar.jpg')),
    ),
  ));
}

