import 'package:flutter/material.dart';
import 'package:platzi_tripsss/wallpaper.dart';

import 'desingners_card_list.dart';
import 'gradient_back_designers.dart';
import 'header_appbar_designers.dart';

class SearchTripsss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //backgroundColor: Colors.white,
        backgroundColor: Colors.white,


        body: Stack(

          children: <Widget>[
            Wallpaper(),
            ListView(
              children: <Widget>[

                DesingnersCardList(),

              ],
            ),
            ClipPath(

              clipper: MyClipper(),
              child: HeaderAppbarDesigners(),
            ),
          ],
        ));
  }

}