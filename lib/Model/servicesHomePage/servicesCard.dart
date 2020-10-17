import 'package:charles_app/Model/servicesHomePage/servicesList.dart';
import 'package:charles_app/View/Caring/CaringView.dart';
import 'package:flutter/material.dart';


class ServiceCard extends StatefulWidget {
  final Services services;
  final int ind;

  const ServiceCard({Key key, this.ind, this.services}) : super(key: key);
  @override
  ServiceCards createState() => ServiceCards(this.services , this.ind);
}

class ServiceCards extends State<ServiceCard> {
  final Services services;
  int index;
  @override
  void initState() {
    // TODO: implement initState

    // img(image);

    super.initState();
    //img(image);
  }

  ServiceCards(this.services , this.index);
  String img(image) {
    return image;
  }

//  Function ontap(){
//    Navigator.of(context).push(MaterialPageRoute(builder:(_)=>check()));
//  }
  @override
  Widget build(BuildContext context) {
    var _counter;
    return InkWell(
      onTap: ()=>{
        if(index == 0){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => services.nav),
          ),
        }

      },
      child: Container(
        height: MediaQuery.of(context).size.height ,
        width: MediaQuery.of(context).size.width / 2.8,
        child: Stack(
          // alignment: Alignment.bottomCenter,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 10, top: 20),

            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: services.cardcolor,
                ),
                // padding: EdgeInsets.only(bottom: 20),
                alignment: Alignment.bottomCenter,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:75),
                      child: Text(
                        services.text,
                        style: TextStyle(
                            fontFamily:'monm',
                            color: Colors.white, fontSize: 17),
                      ),
                    ),
                    Text(
                      services.text2,
                      style: TextStyle(
                          fontFamily:'monr',
                          color: Colors.white,
                      fontSize: 12),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,),
              child: Image.asset(
                services.image1,
                height: MediaQuery.of(context).size.height / 9,
                width: 100,
              ),
            ),

          ],
        ),
      ),
    );
  }
}