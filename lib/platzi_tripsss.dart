import 'package:flutter/material.dart';
import 'package:platzi_tripsss/home_tripsss.dart';
import 'package:platzi_tripsss/profile_tripsss.dart';
import 'package:platzi_tripsss/search_tripsss.dart';

class PlatziTripsss extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTripsss();
  }

}

class _PlatziTripsss extends State <PlatziTripsss>{
  int indexTap=0;
  final List <Widget>  widgetsChildren = [
    HomeTripsss(),
    SearchTripsss(),
    ProfileTripsss()



  ];


  void onTapTapped (int index){
    setState(() {
   indexTap=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build




   return Scaffold(
     body:widgetsChildren [indexTap],
    bottomNavigationBar: Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: Colors.purple
      ),
      child: BottomNavigationBar(
        onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
      BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: ""
      ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
             label: ""

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ""

        )
      ]
      ),
    )
   );
  }

}
