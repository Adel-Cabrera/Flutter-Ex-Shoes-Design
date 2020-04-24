import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 5.0,
      ),
      child: Container(
        width: double.infinity,
        height: 430.0,
        decoration: BoxDecoration(
          color: Color(0xFFFFCF53),
          borderRadius: BorderRadius.circular(
            50.0,
          ),
        ),
        child: Column(
          children: <Widget>[
            _ZapatoConSombra(),
          ],
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        50.0,
      ),
      child: Stack(
        children: <Widget>[
          Image(
            image: AssetImage(
              'assets/images/azul.png',
            ),
          ),
        ],
      ),
    );
  }
}
