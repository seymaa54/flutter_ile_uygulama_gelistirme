import 'package:flutter/material.dart';
import 'package:yasam_beklentisi/constansts.dart';
import 'package:yasam_beklentisi/hesap.dart';
import 'package:yasam_beklentisi/user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;
  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sonuç Sayfası')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              flex: 8,
              child: Center(
                  child: Text(
                Hesap(_userData).hesaplama().round().toString(),
                style: kMetinStili,
              ))),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Geri Dön',
                  style: kMetinStili,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
