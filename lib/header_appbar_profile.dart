//import 'package:cuarto_reto/gradient_back_profile.dart';
//import 'package:cuarto_reto/profile.dart';
import 'package:flutter/cupertino.dart';

import 'gradient_back_profile.dart';
import 'profile.dart';

class HeaderAppBarProfile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
         GradientBackProfile("Profile"),
        Profile()
      ],
    );
  }

}