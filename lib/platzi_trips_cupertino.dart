import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_tripsss/profile_tripsss.dart';
import 'package:platzi_tripsss/search_tripsss.dart';

import 'home_tripsss.dart';
class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.indigo),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search, color: Colors.indigo),
                  label: ""
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.indigo),
                  label: ""
              ),
            ]
        ),

        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTripsss(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTripsss(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTripsss(),
              );
            default:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTripsss(),
              );

          }

        },
      ),
    );
  }

}