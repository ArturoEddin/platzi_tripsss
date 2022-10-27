//import 'package:cuarto_reto/sinopsis_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget{
  String name = "Nevado Coropuma  ";
  String coment= "Se ubica en la Cordillera de Ampato ";
  String details= "6405 metros";
  String pathImage = "assets/img/montaña.jpeg";
  CardImageProfile(this.pathImage,this.name, this.coment, this.details,);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        coment,
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.orange[400],
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w500),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 17.0, fontWeight: FontWeight.w600),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final cardUserDetails =
    Stack(alignment: Alignment(0.9, 1.2), children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 150),
        padding: EdgeInsets.only(top: 15),
        height:90.0,
        width: 250.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ]),
        child: userDetails,
      ),
      FloatingActionButtonGreen()
    ]);
    final card = Container(
      height: 220.0,
      width: 370.0,
      margin: EdgeInsets.only(
          bottom: 56,



      ),

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pathImage)
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow (
                color:  Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
            )
          ]

      ),

    );

    return Stack(
      alignment: Alignment(0,0),
      children: <Widget>[
        card,
        cardUserDetails


      ],
    );
  }

}