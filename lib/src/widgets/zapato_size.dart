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
          Positioned(
            bottom: 20.0,
            right: 0.0,
            child: _ZapatoSombra(),
          ),
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

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230.0,
        height: 120.0,
        decoration: BoxDecoration(
          //color: Colors.red,
          borderRadius: BorderRadius.circular(
            100.0,
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0xFFEAA14E),
              blurRadius: 40.0,
            ),
          ],
        ),
      ),
    );
  }
}
