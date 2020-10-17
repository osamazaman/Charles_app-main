import 'package:flutter/cupertino.dart';

class Cleaning{
  String title;
  String subText;
  Color clr;
  var img;



  Cleaning(this.title,this.subText,this.clr, this.img);
}




List<Cleaning> cleaingList = [
  Cleaning(
    'Home/Office',
    'Cleaning',
    Color(0xFFFA4770),
    "lib/assets/images/home.png"


  ),

  Cleaning(
      'Snow',
      'Cleaning',
      Color(0xFFFC7594),
      "lib/assets/images/snow.jpg"
  ),

  Cleaning(
      'Lawn Mowing',
      'Cleaning',
      Color(0xFFFC7594),
      "lib/assets/images/autumn.jpg"
  ),

  Cleaning(
      'Pool',
      'Cleaning',
      Color(0xFFFC7594),
      "lib/assets/images/pool.jpg"
  ),

];
