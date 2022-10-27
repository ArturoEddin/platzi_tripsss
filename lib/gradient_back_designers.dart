import 'package:flutter/material.dart';
class GradientBackDesigners extends StatelessWidget {
  String title = "";
  GradientBackDesigners(this.title);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final iconoAppBar = Container(
      margin: EdgeInsets.only(
        left: 20,
        top: 25
      ),
      child: InkWell(
        child: Icon(Icons.menu_rounded,color: Colors.white,) ,
        onTap: () {

        },
      )   );

    final texAppBar =  Container (
     margin: EdgeInsets.only(
       left: 110,
       top: 30
     ),
    child: Text(title,style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontFamily: "Lato",
        fontWeight: FontWeight.bold
    ),


    )

    );

    final imageBar = Container(
      //margin: EdgeInsets.only(top: 0),
      height: 110,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/img/anime.jpeg"),colorFilter: const ColorFilter.mode(Colors.blueAccent, BlendMode.saturation),
            opacity: 200
          )
      ),
    );


    return Stack(
      children: <Widget>[
        imageBar,
        iconoAppBar,
        texAppBar
      ],

    ) ;

  }

}

class   MyClipper extends CustomClipper<Path>{
@override
Path getClip(Size size) {
  double height = size.height;
  double width = size.width;

  var path = Path();
  var sideOffset = 30.0;

  var minHeight = size.height - 50.0;
  var midHeight = size.height - 40.0;
  var maxHeight = size.height - 30.0;

  var halfWidth = size.width / 2;
  var thirdWidth = size.width / 3;

  path.lineTo(0.0, minHeight);

  var fcPoint = new Offset(thirdWidth - sideOffset, minHeight);
  var fePoint = new Offset(thirdWidth, midHeight);
  path.quadraticBezierTo(fcPoint.dx, fcPoint.dy, fePoint.dx, fePoint.dy);

  var scPoint = new Offset(halfWidth, maxHeight);
  var sePoint = new Offset(size.width - thirdWidth, midHeight);
  path.quadraticBezierTo(scPoint.dx, scPoint.dy, sePoint.dx, sePoint.dy);

  var tcPoint = new Offset((size.width - thirdWidth) + sideOffset, minHeight);
  var tePoint = new Offset(size.width, minHeight);
  path.quadraticBezierTo(tcPoint.dx, tcPoint.dy, tePoint.dx, tePoint.dy);

  path.lineTo(size.width, 0.0);

  path.close();
  return path;
}

@override
bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
  return true;
}

}