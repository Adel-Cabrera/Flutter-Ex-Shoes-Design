import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoesapp/src/helpers/helpers.dart';
import 'package:shoesapp/src/models/zapato_model.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

import 'package:animate_do/animate_do.dart';
import 'package:provider/provider.dart';

class ZapatoDescPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    cambiarStatusLight();

    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: 'zapato-1',
                child: ZapatoSizePreview(
                  fullScreen: true,
                ),
              ),
              Positioned(
                top: 80.0,
                child: FloatingActionButton(
                  onPressed: () {
                    cambiarStatusDark();

                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 60.0,
                  ),
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ZapatoDescripcion(
                    titulo: 'Nike Air Max 720',
                    descripcion:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _MontoBuyNow(),
                  _ColorsYmas(),
                  _BotonesLikeCartSettings(),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BotonesLikeCartSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _BotonSombreado(
            icon: Icon(
              Icons.star,
              color: Colors.red,
              size: 25.0,
            ),
          ),
          _BotonSombreado(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.grey.withOpacity(
                0.4,
              ),
              size: 25.0,
            ),
          ),
          _BotonSombreado(
            icon: Icon(
              Icons.settings,
              color: Colors.grey.withOpacity(
                0.4,
              ),
              size: 25.0,
            ),
          ),
        ],
      ),
    );
  }
}

class _BotonSombreado extends StatelessWidget {
  final Icon icon;

  _BotonSombreado({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.0,
      height: 55.0,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black12,
              spreadRadius: -5.0,
              blurRadius: 20.0,
              offset: Offset(
                0.0,
                10.0,
              ),
            ),
          ]),
      child: icon,
    );
  }
}

class _ColorsYmas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 90.0,
                  child: _BotonColor(
                    color: Color(0xFFC6D642),
                    index: 4,
                    modelo: 'assets/images/verde.png',
                  ),
                ),
                Positioned(
                  left: 60.0,
                  child: _BotonColor(
                    color: Color(0xFFFFAD29),
                    index: 3,
                    modelo: 'assets/images/amarillo.png',
                  ),
                ),
                Positioned(
                  left: 30.0,
                  child: _BotonColor(
                    color: Color(0xFF2099F1),
                    index: 2,
                    modelo: 'assets/images/azul.png',
                  ),
                ),
                _BotonColor(
                  color: Color(0xFF364D56),
                  index: 1,
                  modelo: 'assets/images/negro.png',
                ),
              ],
            ),
          ),
          BotonNaranja(
            texto: 'More related items',
            alto: 30.0,
            ancho: 170.0,
            color: Color(0xFFFFC675),
          ),
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;
  final int index;
  final String modelo;

  const _BotonColor({@required this.color, this.index, @required this.modelo});

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(
        milliseconds: this.index * 100,
      ),
      duration: Duration(
        milliseconds: 300,
      ),
      child: GestureDetector(
        onTap: () {
          final zapatoModel = Provider.of<ZapatoModel>(context, listen: false);
          zapatoModel.assetImage = this.modelo;
        },
        child: Container(
          width: 45.0,
          height: 45.0,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 20.0,
          bottom: 20.0,
        ),
        child: Row(
          children: <Widget>[
            Text(
              '\$180.0',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Bounce(
              delay: Duration(
                seconds: 1,
              ),
              from: 8.0,
              child: BotonNaranja(
                alto: 40.0,
                ancho: 120.0,
                texto: 'Buy now',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
