import 'package:charles_app/View/Caring/CaringView.dart';
import 'package:charles_app/View/Cleaning/cleaningView.dart';
import 'package:charles_app/View/Laundry/Laundry.dart';
import 'package:flutter/cupertino.dart';

class Services {
    var image1;
  String text;
  String text2;
  Color cardcolor;
  var nav;
  Services(this.image1, this.text, this.text2, this.cardcolor, this.nav);
}

List<Services> services = [
  Services("lib/assets/images/Group.png", 'CLEANING', '98 near you', Color(0xFFFB4E77), cleaningView() ),
  Services("lib/assets/images/Group2.png",'CARING', '196 near you', Color(0xFF4DCFFF),  CaringCh()),
  Services("lib/assets/images/Group3.png", 'LAUNDRY', '98 near you', Color(0xFF4CAF50), Laundry()),
 // Services( 'Laundry', '99 near you', Color(0xFF1BD741), Laundry())
];