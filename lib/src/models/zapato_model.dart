import 'package:flutter/material.dart';

class ZapatoModel with ChangeNotifier {
  String _assetImage = 'assets/images/azul.png';

  String get assetImage => _assetImage;

  set assetImage(String value) {
    _assetImage = value;
    notifyListeners();
  }

  double _talla = 9.0;

  double get talla => _talla;

  set talla(double value) {
    _talla = value;
    notifyListeners();
  }
}
