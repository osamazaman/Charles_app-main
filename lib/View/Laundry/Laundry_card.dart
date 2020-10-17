
import 'package:charles_app/View/Laundry/Laundryclass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';






class laundry_Card extends StatefulWidget {
  final laundry caring;
  final int ind;

  const laundry_Card({Key key,this.ind, this.caring}) : super(key: key);
  @override
  laundry_Cards createState() => laundry_Cards(this.caring);

}
class laundry_Cards extends State<laundry_Card> {

  final laundry caring;
  @override

  laundry_Cards(this.caring);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Card(
         color: caring.clr,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10)),

        ),


        child: Padding(
          padding: const EdgeInsets.only(bottom:8.0,left: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Spacer(),
              Text(
                caring.title,
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18.0,color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(top:3.0),
                child: Text(
                    caring.subText,
                    style: TextStyle(color: Colors.white, fontSize: 13)
                ),
              ),
            ],
            ),
        ),
      ),
    );
  }

}

