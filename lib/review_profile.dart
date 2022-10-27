import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ReviewProfile extends StatelessWidget {

  String pathImage = "";
  String name = "";
  String email = "";


  ReviewProfile(this.pathImage, this.name, this.email);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    final userEmail = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),

      child: Text(
        email,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            color: Color(0xFFa3a5a7)
        ),

      ),

    );

    final userName = Container(
      margin: EdgeInsets.only(
          top: 80,
          left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17.0,
            color: Colors.white
        ),

      ),

    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userEmail,


      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 90.0,
          left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
            style: BorderStyle.solid
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,

              image: AssetImage(pathImage)
          )
      ),




    );

    return

      Row(

      children: <Widget>[
        photo,
        userDetails

      ],
    );
  }
}