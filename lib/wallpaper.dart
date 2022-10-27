import 'package:flutter/material.dart';

class Wallpaper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/humunculo.jpg"),
                opacity:480,scale: 2


            )
        )

    );
  }

}


