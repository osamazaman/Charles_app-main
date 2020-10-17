import 'package:charles_app/Component/alert/alertDialog.dart';

import 'package:charles_app/Model/Cleaning/cleaningCard.dart';
import 'package:charles_app/Model/Cleaning/cleaningList.dart';
import 'package:charles_app/View/Cleaning/cleaningLanding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool selected= true;
bool selected2= true;
bool selected3= true;
bool selected4= true;

class homeView extends StatefulWidget {
  @override
  _homeViewState createState() => _homeViewState();
}

class _homeViewState extends State<homeView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {


    TabController controller;

    // @override
    // void initState(){
    //   super.initState();
    //   controller=new TabController(length: 2, vsync: this);
    // }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color:Colors.white,
            child: Stack(
              children:[
                Padding(
                  padding: const EdgeInsets.only(left:8,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      DefaultTabController(
                        length: 2,
                        initialIndex: 0,
                        child : Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TabBar(
                              isScrollable: true,
                              controller: controller,
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.black,
                              labelPadding: EdgeInsets.only(right: 20),
                              indicatorColor: Colors.transparent,
                              tabs: [
                                Container(
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Rooms", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:58.0),
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Hourly", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height/2.4,
                              child:
                              TabBarView(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected=!selected;
                                              selected2= true;
                                              selected3= true;
                                              selected4= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),

                                                ),
                                                height: selected ? 120 : 120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                          color: selected==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("2 Rooms",style: TextStyle(color:  selected==false?Colors.white:(Colors.black),),),
                                                              Text("\$20",style: TextStyle(color:  selected==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("2 car driveway", style: TextStyle(color:  selected==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected2=!selected2;
                                              selected= true;
                                              selected3= true;
                                              selected4= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected2 ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  // color: selected2 ? Colors.white : Color(0xFFFC7594),
                                                ),
                                                height: selected2 ? 120:120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                          color: selected2==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("4 Rooms",style: TextStyle(color:  selected2==false?Colors.white:(Colors.black))),
                                                              Text("\$20",style: TextStyle(color:  selected2==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("2 car driveway", style: TextStyle(color:  selected==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected3=!selected3;
                                              selected= true;
                                              selected2= true;
                                              selected4= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected3 ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  // color: selected3 ? Colors.white : Color(0xFFFC7594),
                                                ),
                                                height: selected3 ? 120:120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: selected3==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("3 Rooms",style: TextStyle(color:  selected3==false?Colors.white:(Colors.black))),
                                                              Text("\$75",style: TextStyle(color:  selected3==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("5 car driveway", style: TextStyle(color:  selected3==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected4=!selected4;
                                              selected= true;
                                              selected3= true;
                                              selected2= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected4 ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  // color: selected4 ? Colors.white : Color(0xFFFC7594),
                                                ),
                                                height: selected4 ? 120:120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: selected4==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("5 Rooms",style: TextStyle(color:  selected4==false?Colors.white:(Colors.black))),
                                                              Text("\$180",style: TextStyle(color:  selected4==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("12 car driveway", style: TextStyle(color:  selected==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected=!selected;
                                              selected2= true;
                                              selected3= true;
                                              selected4= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),

                                                ),
                                                height: selected ? 120:120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                          color: selected==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("2 Rooms",style: TextStyle(color:  selected==false?Colors.white:(Colors.black),),),
                                                              Text("\$20",style: TextStyle(color:  selected==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("2 car driveway", style: TextStyle(color:  selected==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected2=!selected2;
                                              selected= true;
                                              selected3= true;
                                              selected4= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected2 ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  // color: selected2 ? Colors.white : Color(0xFFFC7594),
                                                ),
                                                height: selected2 ? 120:120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 35,
                                                      decoration: BoxDecoration(
                                                          color: selected2==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("4 Rooms",style: TextStyle(color:  selected2==false?Colors.white:(Colors.black))),
                                                              Text("\$20",style: TextStyle(color:  selected2==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("2 car driveway", style: TextStyle(color:  selected2==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected3=!selected3;
                                              selected= true;
                                              selected2= true;
                                              selected4= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected3 ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  // color: selected3 ? Colors.white : Color(0xFFFC7594),
                                                ),
                                                height: selected3 ? 120:120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: selected3==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("3 Rooms",style: TextStyle(color:  selected3==false?Colors.white:(Colors.black))),
                                                              Text("\$75",style: TextStyle(color:  selected3==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("5 car driveway", style: TextStyle(color:  selected==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                              selected4=!selected4;
                                              selected= true;
                                              selected3= true;
                                              selected2= true;
                                            });
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected4 ? Colors.white : Colors.red,
                                            ),
                                            child: Card(
                                              child: AnimatedContainer(
                                                duration: Duration(milliseconds: 300),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(5),
                                                  // color: selected4 ? Colors.white : Color(0xFFFC7594),
                                                ),
                                                height: selected4 ? 120:120,
                                                width: 160,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                          color: selected4==false?Colors.red:Color(0xFFEFEFEF),
                                                          borderRadius: BorderRadius.only(
                                                            topRight: Radius.circular(5),
                                                            topLeft: Radius.circular(5),
                                                          )
                                                      ),
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(left:8.0,right: 8),
                                                        child: Center(
                                                          child: Row(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Text("5 Rooms",style: TextStyle(color:  selected4==false?Colors.white:(Colors.black))),
                                                              Text("\$180",style: TextStyle(color:  selected4==false?Colors.white:(Colors.black))),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                      child: Text("12 car driveway", style: TextStyle(color:  selected==false?Colors.black:(Colors.black),),),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left:10.0, right:8),
                                                      child: Text("will be cleaned and salted"),
                                                    ),
                                                    Spacer(),
                                                    Expanded(child: Padding(
                                                      padding: const EdgeInsets.only(left:10.0),
                                                      child: alertD(),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
