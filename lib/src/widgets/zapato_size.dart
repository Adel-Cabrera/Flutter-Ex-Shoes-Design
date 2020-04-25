import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/src/models/zapato_model.dart';
import 'package:shoesapp/src/pages/zapato_desc_page.dart';

class ZapatoSizePreview extends StatelessWidget {
  final bool fullScreen;
  ZapatoSizePreview({
    this.fullScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!this.fullScreen)
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ZapatoDescPage(),
            ),
          );
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (fullScreen) ? 5.0 : 30.0,
          vertical: (fullScreen) ? 5.0 : 0.0,
        ),
        child: Container(
          width: double.infinity,
          height: fullScreen ? 410.0 : 430.0,
          decoration: BoxDecoration(
            color: Color(0xFFFFCF53),
            borderRadius: (!fullScreen)
                ? BorderRadius.circular(
                    50.0,
                  )
                : BorderRadius.only(
                    bottomLeft: Radius.circular(
                      50.0,
                    ),
                    bottomRight: Radius.circular(
                      50.0,
                    ),
                    topLeft: Radius.circular(
                      40.0,
                    ),
                    topRight: Radius.circular(
                      40.0,
                    ),
                  ),
          ),
          child: Column(
            children: <Widget>[
              _ZapatoConSombra(),
              if (!fullScreen) _ZapatoTallas(),
            ],
          ),
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
    final zapatoModel = Provider.of<ZapatoModel>(context);

    return GestureDetector(
      onTap: () {
        final zapatoModel = Provider.of<ZapatoModel>(context, listen: false);
        zapatoModel.talla = this.numero;
      },
      child: Container(
        alignment: Alignment.center,
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: (this.numero == zapatoModel.talla)
              ? Color(0xFFF1A23A)
              : Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            if (this.numero == zapatoModel.talla)
              BoxShadow(
                color: Color(0xFFF1A23A),
                blurRadius: 10.0,
                offset: Offset(0.0, 5.0),
              ),
          ],
        ),
        child: Text(
          '${numero.toString().replaceAll('.0', '')}',
          style: TextStyle(
            color: (this.numero == zapatoModel.talla)
                ? Colors.white
                : Color(0xFFF1A23A),
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final zapatoModel = Provider.of<ZapatoModel>(context);

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
              zapatoModel.assetImage,
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
