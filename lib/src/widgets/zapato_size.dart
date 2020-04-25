import 'package:flutter/cupertino.dart';
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
            _ZapatoTallas(),
          ],
        ),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _TallaZapatoCaja(
            numero: 7,
          ),
          _TallaZapatoCaja(
            numero: 7.5,
          ),
          _TallaZapatoCaja(
            numero: 8,
          ),
          _TallaZapatoCaja(
            numero: 8.5,
          ),
          _TallaZapatoCaja(
            numero: 9,
          ),
          _TallaZapatoCaja(
            numero: 9.5,
          ),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  final double numero;

  _TallaZapatoCaja({this.numero});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45.0,
      height: 45.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(),
        ],
      ),
      child: Text(
        '${numero.toString().replaceAll('.0', '')}',
        style: TextStyle(
          color: Color(0xFFF1A23A),
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
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
