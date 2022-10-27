import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_tripsss/description_place.dart';
import 'package:platzi_tripsss/gradient_back.dart';
import 'package:platzi_tripsss/header_appbar.dart';
import 'package:platzi_tripsss/platzi_trips_cupertino.dart';
import 'package:platzi_tripsss/platzi_tripsss.dart';
import 'package:platzi_tripsss/review.dart';
import 'package:platzi_tripsss/review_list.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light
      )
  );
}
String descriptionDummy = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: PlatziTripsCupertino(),
      //home: PlatziTripsss(),
    );

  }
}


