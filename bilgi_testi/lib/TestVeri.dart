import 'package:bilgi_testi/soru.dart';

abstract class TestVeri {
  int _soruIndex = 0;

  int get soruIndex => _soruIndex;

  set soruIndex(int value) {
    _soruIndex = value;
  }


  List<Soru> _soruBankasi = [];

  List<Soru> get soruBankasi => _soruBankasi;

  set soruBankasi(List<Soru> value) {
    _soruBankasi = value;
  }

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  String getSoruYanit() {
    return _soruBankasi[_soruIndex].soruYaniti.toString();
  }



  int indexArttir() {
    if (_soruIndex < _soruBankasi.length-1) {
      _soruIndex++;
    }
    return _soruIndex;
  }

  bool testBittiMi() {
    // soruındex 0-6 sorubankası 1-7
    if (_soruIndex>=  soruBankasi.length) {
      return true;
    } else {
      print(_soruIndex.toString()+"index");
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
  }
}
