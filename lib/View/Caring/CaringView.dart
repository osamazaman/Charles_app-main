import '../../Component/searchButton.dart';
import '../../Component/alert/alertDialog.dart';
import 'package:charles_app/Model/CaringList/Caring.dart';
import 'package:charles_app/Model/CaringList/Caring_card.dart';
import 'package:charles_app/Model/CaringList/Caring_list.dart';
import 'package:charles_app/View/Caring/CaringLanding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

bool selected= true;
bool selected2= true;
bool selected3= true;
bool selected4= true;

class CaringCh extends StatefulWidget {
  @override
  _CaringChState createState() => _CaringChState();
}

class _CaringChState extends State<CaringCh>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {


    TabController controller;

    @override
    void initState(){
      super.initState();
      controller=new TabController(length: 3, vsync: this);
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children:[
              Padding(
                padding: const EdgeInsets.only(left:180.0),
                child: Container(
                  height: 200,
                  width: 250,
                  child: Opacity(
                      opacity: 0.3,
                      child: Image.asset("lib/assets/images/logo.png")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: ()=>{
                            Navigator.pop(context)
                          },
                          child: Icon(Icons.arrow_back_ios,)
                      ),
                        Padding(
                          padding: const EdgeInsets.only(left:12.0),
                          child: Text("Caring", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                        ),
                        Spacer(),
                        searchAnimate(),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0),
                      child: Text("Choose Service", style: TextStyle(fontSize: 20),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:5.0),
                      child: Text("Drag to select your desired service"),
                    ),
                    SizedBox(height: 5,),

                    Container(
                      height: MediaQuery.of(context).size.height/4.5,
                      width: MediaQuery.of(context).size.width,
                      child:
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: caring.length,
                          itemBuilder: (_, index) {
                            return Caring_Card(
                              caring: caring[index],
                            );
                          }
                      ),

                    ),
                    SizedBox(height: 3,),
                    DefaultTabController(
                      length: 4,
                      initialIndex: 0,
                      child : Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TabBar(
                            isScrollable: true,
                            controller: controller,
                            unselectedLabelColor: Colors.grey,
                            labelColor: Colors.black,
                            indicatorColor: Colors.transparent,
                            tabs: [
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: Text(
                                  "Baby Sitter", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Sitter", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Pet Sitter", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Pet Sitter", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0),
                            child: Text("3-16 Years Old", style:TextStyle(fontSize: 13)),
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
                                        child: Card(
                                          child: AnimatedContainer(
                                            duration: Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected ? Colors.white : Color(0xFFA6E7FF),
                                            ),
                                            height: selected ? 90 : 160,
                                            width: 160,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      color: selected==false?Color(0xFF4DCFFF):Color(0xFFEFEFEF),
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
                                                          Text("3 hrs",style: TextStyle(color:  selected==false?Colors.white:(Colors.black))),
                                                          Text("\$20",style: TextStyle(color:  selected==false?Colors.white:(Colors.black))),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                  child: Text("A professional baby sitter will take care of your baby for 3 hours", style: TextStyle(color:  selected==false?Colors.white:(Colors.black),),),
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
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            selected2=!selected2;
                                            selected= true;
                                            selected3= true;
                                            selected4= true;
                                          });
                                        },
                                        child: Card(
                                          child: AnimatedContainer(
                                            duration: Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected2 ? Colors.white : Color(0xFFA6E7FF),
                                            ),
                                            height: selected2 ? 90 : 160,
                                            width: 160,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      color: selected2==false?Color(0xFF4DCFFF):Color(0xFFEFEFEF),
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
                                                          Text("3 hrs",style: TextStyle(color:  selected2==false?Colors.white:(Colors.black))),
                                                          Text("\$20",style: TextStyle(color:  selected2==false?Colors.white:(Colors.black))),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                  child: Text("A professional baby sitter will take care of your baby for 3 hours", style: TextStyle(color:  selected2==false?Colors.white:(Colors.black),),),
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
                                        child: Card(
                                          child: AnimatedContainer(
                                            duration: Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected3 ? Colors.white : Color(0xFFA6E7FF),
                                            ),
                                            height: selected3 ? 90 : 160,
                                            width: 160,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      color: selected3==false?Color(0xFF4DCFFF):Color(0xFFEFEFEF),
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
                                                          Text("3 hrs",style: TextStyle(color:  selected3==false?Colors.white:(Colors.black))),
                                                          Text("\$20",style: TextStyle(color:  selected3==false?Colors.white:(Colors.black))),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                  child: Text("A professional baby sitter will take care of your baby for 3 hours", style: TextStyle(color:  selected3==false?Colors.white:(Colors.black),),),
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
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            selected4=!selected4;
                                            selected= true;
                                            selected3= true;
                                            selected2= true;
                                          });
                                        },
                                        child: Card(
                                          child: AnimatedContainer(
                                            duration: Duration(milliseconds: 300),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: selected4 ? Colors.white : Color(0xFFA6E7FF),
                                            ),
                                            height: selected4 ? 90 : 160,
                                            width: 160,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      color: selected4==false?Color(0xFF4DCFFF):Color(0xFFEFEFEF),
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
                                                          Text("3 hrs",style: TextStyle(color:  selected4==false?Colors.white:(Colors.black))),
                                                          Text("\$20",style: TextStyle(color:  selected4==false?Colors.white:(Colors.black))),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:10.0, right: 10,top:10),
                                                  child: Text("A professional baby sitter will take care of your baby for 3 hours", style: TextStyle(color:  selected4==false?Colors.white:(Colors.black),),),
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
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                child: Center(
                                  child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                ),
                              ),
                              Container(
                                child: Center(
                                  child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 5,),

                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Container(
                            width:150,
                            child: FlatButton(
                              color: Color(0xFFEFEFEF),
                              textColor: Colors.grey,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                /*...*/
                              },
                              child: Text(
                                "CUSTOMIZE",
                                style: TextStyle(fontSize: 13.0),
                              ),
                            ),
                          ),
                          Container(
                            width:150,
                            child: FlatButton(
                              color: Color(0xFF7ADBFF),
                              textColor: Colors.white,
                              disabledColor: Colors.grey,
                              disabledTextColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              splashColor: Colors.blueAccent,
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => caringLanding()));
                              },
                              child: Text(
                                "BOOK NOW",
                                style: TextStyle(fontSize: 13.0),
                              ),
                            ),
                          )
                        ]
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
