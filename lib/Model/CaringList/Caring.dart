import 'package:flutter/cupertino.dart';

class Caring{
  String title;
  String subText;
  Color clr;



  Caring(this.title,this.subText,this.clr);
}




List<Caring> caring = [
  Caring(
      'Sitters',
      'Caring',
      Color(0xFF4DCFFF),

  ),

  Caring(
      'PSW',
      'Caring',
      Color(0xFFA6E7FF)
  ),

  Caring(
    'Nurses',
    'Caring',
      Color(0xFFA6E7FF)
  ),

  Caring(
    'PSW',
    'Caring',
      Color(0xFFA6E7FF)
  ),

];
