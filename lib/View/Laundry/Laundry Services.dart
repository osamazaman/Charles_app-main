import '../../Component/searchButton.dart';

import 'package:charles_app/View/Laundry/LaundryService.dart';
import 'package:charles_app/View/Laundry/LaundryServiceCard.dart';
import 'package:charles_app/View/Laundry/ToggleButton.dart';
import 'package:flutter/material.dart';


class Laundry_Services extends StatefulWidget {
  @override
  _Laundry_ServicesState createState() => _Laundry_ServicesState();
}

class _Laundry_ServicesState extends State<Laundry_Services> {
  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(
      length:2,
      child: Scaffold(

        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Container(
                  child: Row(
                    children: [
                      IconButton(icon: Icon(Icons.arrow_back_ios),),
                      Text("Laundry",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),),
                      Spacer(),
                      searchAnimate()

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,top: 20),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Choose Service",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Row(
                        children: [
                          Text("Drag to select your desired service",style: TextStyle(fontSize:11),),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20,top:10),
                child: Container(

                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: caring.length,
                      itemBuilder: (_, index) {
                        return laundryService_Card(
                          caringg: caring[index],
                        );
                      }
                  ),

                ),
              ),
              Stack(
                children:[

                  Padding(
                    padding: const EdgeInsets.only(left:40,top: 61),
                    child: Text('Pickup Date',style:TextStyle(fontSize: 12,color: Colors.grey)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:40,top: 140),
                    child: Text('Pickup Time',style:TextStyle(fontSize: 12,color: Colors.grey)),
                  ),

                  Container(
                  child:Column(
                    children:[
                      TabBar(

                        tabs: <Widget>[
                          Tab(
                              child: Text(
                                "PickUp",
                                style: TextStyle(color: Colors.black),
                              )),
                          Tab(
                              child: Text(
                                "Delivery",
                                style: TextStyle(color: Colors.black),

                              )),

                        ],
                      ),
                      Container(
                        height: 200,

                        child: TabBarView(
                          children: [
                            Container(
                                width:100,
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:15,right:15,top:20),
                                      child: TextField(

                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20),
                                            borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                         hintText: "MM-DD",
                                            filled: true,

                                        ),

                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:15,right:15,top:20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                          hintText: "HH-MM",
                                          filled: true,

                                        ),

                                      ),
                                    )
                                  ],
                                )
                            ),
                            Container(
                                width:100,

                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:15,right:15,top:20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                          hintText: "MM-DD",
                                          filled: true,

                                        ),

                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:15,right:15,top:20),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20),
                                              borderSide: BorderSide(color: Colors.transparent)
                                          ),
                                          hintText: "HH-MM",
                                          filled: true,

                                        ),

                                      ),
                                    )


                                  ],
                                )

                            ),



                          ],
                        ),
                      ),

                    ]
                  )
                ),]
              ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10,right:10),
                    child: Row(
                      children: [
                        Text("Recurrent",style: TextStyle(fontSize: 12),),
                        Spacer(),
                        toggle(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 80,
                          child: Card(
                            elevation: 5,
                            child:Center(child: Text("Daily"))
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          child: Card(
                              elevation: 5,
                              child:Center(child: Text("Weekly"))
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          child: Card(
                              elevation: 5,
                              child:Center(child: Text("Monthly"))
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),


            Spacer(),
              Container(
                width: MediaQuery.of(context).size.width,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:Color(0xFF64DD17),
                  ),
                  child:FlatButton(
                      child:Text("Book Now")

                  )

              )



            ],
          ),
        ),



      ),
    );
  }
}
