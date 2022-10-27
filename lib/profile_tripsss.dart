import 'package:flutter/material.dart';
import 'package:platzi_tripsss/header_appbar_profile.dart';

import 'card_image_profile_list.dart';
class ProfileTripsss extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        HeaderAppBarProfile(),
        CardImageProfileList()
      ],
    );
  }

}