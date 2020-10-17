import '../../Component/searchButton.dart';
import '../../assets/Dailog box.dart';

import 'package:charles_app/View/Laundry/Laundry%20Services.dart';
import 'package:charles_app/View/Laundry/Laundry_card.dart';
import 'package:charles_app/View/Laundry/Laundryclass.dart';
import 'package:flutter/material.dart';


class Laundry extends StatefulWidget {
  @override
  _LaundryState createState() => _LaundryState();
}

class _LaundryState extends State<Laundry> {
  bool selected = false;




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(

        body: SingleChildScrollView(
          child: Container(
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
                  padding: const EdgeInsets.only(top:10),
                  child: Container(

                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width,
                    child:
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: laundry_zohair.length,
                        itemBuilder: (_, index) {
                          return laundry_Card(
                            caring: laundry_zohair[index],
                          );
                        }
                    ),

                  ),
                ),
                TabBar(
                  tabs: <Widget>[
                    Tab(
                        child: Text(
                          "Men",
                          style: TextStyle(color: Colors.black),
                        )),
                    Tab(
                        child: Text(
                          "Women",
                          style: TextStyle(color: Colors.black),
                        )),
                    Tab(

                        child: Text(
                          "Kids",
                          style: TextStyle(color: Colors.black),
                        )),
                  ],
                ),
                Container(
                  height: 400,

                  child: TabBarView(
                    children: [
                      Container(
                        width:100,

                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:10,left:20),
                              child: Row(
                                children: [
                                  InkWell(

                                    child: AnimatedContainer(

                                      duration: Duration(seconds: 1),

                                      decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(20),
                                        color: selected ? Colors.white : Colors.greenAccent,
                                      ),
                                      height: selected ? 134 : 190,
                                      width: 150,



                                      child: Column(
                                        children: [

                                          Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:const  Radius.circular(20.0),
                                                  topRight:const  Radius.circular(20.0) ),
                                              color: Colors.grey[200],
                                            ),
                                            //color: Colors.grey[200],
                                            child: Padding(
                                              padding: const EdgeInsets.only(left:10,right:10),
                                              child: Row(
                                                children: [
                                                  Text('1 Bag '),
                                                 Spacer(),
                                                  Text('20\$'),

                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:10,left:10,right:10),
                                            child: Row(
                                              children: [
                                                Text('Shirt '),
                                                Spacer(),
                                                Text('1'),

                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:10,left:10,right:10),
                                            child: Row(
                                              children: [
                                                Text('T-Shirt '),
                                                Spacer(),
                                                Text('2'),

                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:10,left:10,right:10),
                                            child: Row(
                                              children: [
                                                Text('Pant '),
                                                Spacer(),
                                                Text('2'),

                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top:10,left:10,right:10),
                                            child: Row(
                                              children: [
                                                Text('Total '),
                                                Spacer(),
                                                Text('40\$'),

                                              ],
                                            ),
                                          ),

                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(left:35),
                                              child: Container(
                                                child: Row(
                                                  children: [
                                                    raised(),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                    onTap: (){
                                      setState(() {
                                        selected = !selected;


                                      });
                                    },
                                  ),
                                  SizedBox(width: 10,),

                                ],
                              ),
                            ),


                          ],
                        )
                      ),
                      Container(
                          child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10,left:20),
                            child: Row(
                              children: [
                                InkWell(

                                  child: AnimatedContainer(

                                    duration: Duration(seconds: 1),

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: selected ? Colors.white : Colors.greenAccent,
                                    ),
                                    height: selected ? 134 : 190,
                                    width: 150,



                                    child: Column(
                                      children: [

                                        Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft:const  Radius.circular(20.0),
                                                topRight:const  Radius.circular(20.0) ),
                                            color: Colors.grey[200],
                                          ),
                                          //color: Colors.grey[200],
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:10,right:10),
                                            child: Row(
                                              children: [
                                                Text('1 Bag '),
                                                Spacer(),
                                                Text('20\$'),

                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('Shirt '),
                                              Spacer(),
                                              Text('1'),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('T-Shirt '),
                                              Spacer(),
                                              Text('2'),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('Pant '),
                                              Spacer(),
                                              Text('2'),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('Total '),
                                              Spacer(),
                                              Text('40\$'),

                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:35),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  raised(),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selected = !selected;


                                    });
                                  },
                                ),
                                SizedBox(width: 10,),


                              ],
                            ),
                          ),


                        ],
                      )

                              ),
                      Container(
                          child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:10,left:20),
                            child: Row(
                              children: [
                                InkWell(

                                  child: AnimatedContainer(

                                    duration: Duration(seconds: 1),

                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: selected ? Colors.white : Colors.greenAccent,
                                    ),
                                    height: selected ? 134 : 190,
                                    width: 150,



                                    child: Column(
                                      children: [

                                        Container(
                                          height: 30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft:const  Radius.circular(20.0),
                                                topRight:const  Radius.circular(20.0) ),
                                            color: Colors.grey[200],
                                          ),
                                          //color: Colors.grey[200],
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:10,right:10),
                                            child: Row(
                                              children: [
                                                Text('1 Bag '),
                                                Spacer(),
                                                Text('20\$'),

                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('Shirt '),
                                              Spacer(),
                                              Text('1'),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('T-Shirt '),
                                              Spacer(),
                                              Text('2'),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('Pant '),
                                              Spacer(),
                                              Text('2'),

                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:10,left:10,right:10),
                                          child: Row(
                                            children: [
                                              Text('Total '),
                                              Spacer(),
                                              Text('40\$'),

                                            ],
                                          ),
                                        ),

                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:35),
                                            child: Container(
                                              child: Row(
                                                children: [
                                                  raised(),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  ),
                                  onTap: (){
                                    setState(() {
                                      selected = !selected;


                                    });
                                  },
                                ),
                                SizedBox(width: 10,),


                              ],
                            ),
                          ),


                        ],
                      )
                      ),


                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10,left:60,bottom:10),
                  child: Row(
                    children: [
                      Container(
                        decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        color:Color(0xFF64DD17),
                  ),
                          child:FlatButton(
                              child:Text("Customise")

                          )

                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:40),
                        child: Container(
                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:Color(0xFF64DD17),
                            ),
                          child:FlatButton(
                            child:Text("Book"),
                            onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Laundry_Services()),
                              );


                            },

                          )

                        ),
                      ),
                    ],
                  ),
                )



              ],
            ),
          ),
        ),



      ),
    );
  }
}
