import 'package:flutter/material.dart';

//import 'package:tercer_reto/gradient_back_designers.dart';

import 'gradient_back_designers.dart';
class HeaderAppbarDesigners extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[

        GradientBackDesigners("MEJORES ANIMES SHOMEN")

      ],
    );
  }

}