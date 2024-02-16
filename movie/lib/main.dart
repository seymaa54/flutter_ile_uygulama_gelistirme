import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(child: Text('Movie')),
      ),
      body: Center(child: Image.asset('images/fresim.jfif')),
    ),
  ));
}

