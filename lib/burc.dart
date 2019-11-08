import 'package:flutter/material.dart';

class Burc {

  String _Adi;
  String _Tarihi;
  String _Detayi;
  String _buyukResim;
  String _kucukResim;

  Burc(this._Adi, this._Tarihi, this._Detayi, this._buyukResim,
      this._kucukResim);

  String get kucukResim => _kucukResim;

  set kucukResim(String value) {
    _kucukResim = value;
  }

  String get buyukResim => _buyukResim;

  set buyukResim(String value) {
    _buyukResim = value;
  }

  String get Detayi => _Detayi;

  set Detayi(String value) {
    _Detayi = value;
  }

  String get Tarihi => _Tarihi;

  set Tarihi(String value) {
    _Tarihi = value;
  }

  String get Adi => _Adi;

  set Adi(String value) {
    _Adi = value;
  }


}
