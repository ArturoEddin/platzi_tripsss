//import 'package:cuarto_reto/card_image_profile.dart';
//import 'package:cuarto_reto/sinopsis_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_image_profile.dart';

class CardImageProfileList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 250
      ),
      child:ListView(
         scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile("assets/img/montaña.jpg","Nevado Coropuma ", "Se ubica en la Cordillera de Ampato",  "6405 metros"),

          CardImageProfile("assets/img/valle.jpg","Valle del Colca ", "Se ubica en La provincia de Caylloma" ,  " Altura maxima de 4.500 msnm"),

          CardImageProfile("assets/img/playa.jpg","Playa Mancora", "En el departamento de Piura" ,  " kilómetro 1165 de la Panamericana Norte"),


        ],
      ),

    );

  }

}