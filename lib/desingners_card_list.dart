//import 'package:flutter/material.dart';
//import 'package:tercer_reto/designers_card.dart';
//import 'package:tercer_reto/main.dart';
import 'package:flutter/cupertino.dart';

import 'designers_card.dart';

class DesingnersCardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(
        top: 40,
      ),

      child:   Column(

        children: <Widget>[
          DesignersCard("assets/img/dragon ball z.jpg","Dragon Ball Z " ,"Año de Emisión :  1989  ", "assets/img/msj.png" ,true),
          DesignersCard("assets/img/black clover.jpg","Black Clover","Año de Emisión :  2017 ", "assets/img/msj.png",false),
          DesignersCard("assets/img/bleach.jpg","Bleach " ,"Año de Emisión :  2004 ", "assets/img/msj.png",false),
          DesignersCard("assets/img/boku.jpg","Boku No Hero Academia " ,"Año de Emisión :  2016", "assets/img/msj.png",false),
          DesignersCard("assets/img/fairy tail.jpg","Fairy Tail " ,"Año de Emisión :  2009 ", "assets/img/msj.png",false),
          DesignersCard("assets/img/fullmetal.jpg","Fullmetal Alchemist " ,"Año de Emisión :  2009", "assets/img/msj.png",false),
          DesignersCard("assets/img/gintama.jpg","Gintama" ,"Año de Emisión :  2006", "assets/img/msj.png",false),
          DesignersCard("assets/img/hajime.jpg","Hajime no Ippo" ,"Año de Emisión :  2000", "assets/img/msj.png",false),
          DesignersCard("assets/img/hunter.jpg","Hunter x Hunter" ,"Año de Emisión :  2011", "assets/img/msj.png",false),
          DesignersCard("assets/img/jujutsu.jpg","Jujutsu Kaisen" ,"Año de Emisión :  2020", "assets/img/msj.png",false),
          DesignersCard("assets/img/kimetsu.jpg","Kimetsu No Yaiba " ,"Año de Emisión :  2019", "assets/img/msj.png",false),
          DesignersCard("assets/img/magic.jpg","Magi " ,"Año de Emisión :  2012", "assets/img/msj.png",false),
          DesignersCard("assets/img/nanatsu.jpg","Nanatsu no Taizai " ,"Año de Emisión :  2014 ", "assets/img/msj.png",false),
          DesignersCard("assets/img/naruto.jpg"," Naruto  " ,"Año de Emisión :  2002 ", "assets/img/msj.png",false),
          DesignersCard("assets/img/one piece.jpg","One Piece " ,"Año de Emisión :  1999 ", "assets/img/msj.png",false),
          DesignersCard("assets/img/shingekion.jpg","Shingekion no Kyojin" ,"Año de Emisión :  2013", "assets/img/msj.png",false),
          DesignersCard("assets/img/yuyo.jpg","Yuu Yuu Hakusho " ,"Año de Emisión :  1992", "assets/img/msj.png",false)
        ],

      )
    );



  }
  
}