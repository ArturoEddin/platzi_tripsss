import 'package:flutter/material.dart';

class DesignersCard extends StatelessWidget{

  String pathImage = "assets/img/thor5.jpg";
  String pathImageIcon = "assets/img/msj.png";
  String userDesigner= "Thor Alexander " ;
  String detailDesigner= "Experience : 07 years " ;
  bool disabled= false;

  DesignersCard(this.pathImage,this.userDesigner,this.detailDesigner,this.pathImageIcon,this.disabled);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final photo = Container(
      height: 80,
      width: 80,
      margin: EdgeInsets.only(
      top: 20,
      left: 20,
      right: 20
      ),

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),

        )

      ),
    );
    final user = Container(
      child: Text(userDesigner,style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w900,
        fontFamily: "Lato"
      ),
    ),
    );
    final detail = Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30
      ),
      child: Text(detailDesigner,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          fontFamily: "Lato"
      ),
      ),
    );

    final message = Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: (disabled ? Color(0xFFC9C9C9) : Color(0xFFCB4E4A))
      ),
      margin: EdgeInsets.only(
        left: 20
      ),
      child: InkWell(
        onTap: () {},
        child: IconButton(
          icon: Icon(Icons.thumb_up_alt),
          color: (disabled ? Colors.black38 : Colors.white ), onPressed: () {  },
        ),
      ),



      );





    final description = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        user,
        detail
      ],

    );



    return Container(
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            style: BorderStyle.solid,
            color: Colors.black26
          )
        )
      ),
        child : Row(
          children: <Widget>[
            photo,
            description,
            message

          ],
        )


    );



  }

}