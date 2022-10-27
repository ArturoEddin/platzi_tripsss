//import 'package:cuarto_reto/review_profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_tripsss/review_profile.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final icon_photo= Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: Colors.grey[400]),
      child: Icon(Icons.photo_camera_back_outlined, color: Colors.blue[600]),
    );

    final icon_bookmark_border = Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.bookmark_border, color: Colors.blue[600]),
    );

    final icon_add = Container(
      width: 48,
      height: 48,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.add, color: Colors.blue[600]),
    );

    final icon_mail = Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.mail, color: Colors.blue[600]),
    );

    final icon_person = Container(
      width: 32,
      height: 32,
      //margin: EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Icon(Icons.person, color: Colors.blue[600]),
    );

    final opcionMenus = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        icon_bookmark_border,
        icon_photo,
        icon_add,
        icon_mail,
        icon_person
      ],
    );

    return Column(
     children: <Widget>[
       Container(
           margin: EdgeInsets.only(top: 1.0),
           child: ReviewProfile(
             "assets/img/eddin.jpg",
             "Arturo Eddin",
             "arturoeddin@gmail.com",
           )),
       Container(
           margin: EdgeInsets.only(left: 20.0, right: 20, top: 10),
           child: opcionMenus)
     ],
   );
  }

}