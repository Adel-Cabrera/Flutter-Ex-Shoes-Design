import 'package:flutter/material.dart';
import 'package:shoesapp/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: //CustomAppBar(
//        texto: 'For you',
//      ),
          Column(
        children: <Widget>[
          CustomAppBar(
            texto: 'For you',
          ),
          SizedBox(
            height: 20.0,
          ),
          ZapatoSizePreview(),
        ],
      ),
    );
    //);
  }
}