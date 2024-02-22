import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String aktif = "passive";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  setState(() {
                    aktif = "ACTİVE1";
                  });
                },
                child: Container(
                  width: 150,
                  height: 400,
                  color: aktif=='ACTİVE1'? Colors.blue:Colors.grey,
                  child: Text("$aktif"=="ACTİVE1"? "ACTİVE":"passive",
                      style: TextStyle(color: Colors.pinkAccent, fontSize: 39)),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      aktif = "ACTİVE2";
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 400,
                    color: aktif=="ACTİVE2"?Colors.blue:Colors.grey,
                    child: Text("$aktif"=="ACTİVE2"? "ACTİVE":"passive" ,
                        style: TextStyle(color: Colors.pink, fontSize: 39)),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
