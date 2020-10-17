import 'package:flutter/cupertino.dart';

class PopularServices {
  var image;
  String text;
  String text2;

  Color cardcolor;
  PopularServices(this.image, this.text, this.text2, this.cardcolor);
}

List<PopularServices> pservices = [
  PopularServices(
      'lib/assets/images/homewhite.png', '2 Rooms', 'cleaning', Color(0xFF279AAC)),
  PopularServices(
      'lib/assets/images/antique1.png', 'Wash & Iron', 'Laundry', Color(0xFF93E465)),
  PopularServices(
      'lib/assets/images/grouped.png', 'Cleaning', '96 near you', Color(0xFFFB4E77))
];