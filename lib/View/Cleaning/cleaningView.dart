import 'package:charles_app/Component/searchButton.dart';
import 'package:charles_app/View/Cleaning/lawnLanding.dart';
import 'package:charles_app/View/Cleaning/poolLanding.dart';
import 'package:charles_app/View/Cleaning/snowView.dart';
import 'package:charles_app/assets/appColors/appColors.dart';
import 'package:charles_app/View/Cleaning/cleaningLanding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

import 'homeOfficeLanding.dart';

bool selected= true;
bool selected2= true;
bool selected3= true;
bool selected4= true;
Color cardcolor1=Colors.red;
Color cardcolor2=Color(0XFFBCBDC1);
Color cardcolor3=Color(0XFFBCBDC1);
Color cardcolor4=Color(0XFFBCBDC1);
bool homevisibility=true;
bool lawnvisibility=false;
bool poolvisibility=false;
bool snowvisibility=false;


class cleaningView extends StatefulWidget {

  @override
  _cleaningViewState createState() => _cleaningViewState();
}

class _cleaningViewState extends State<cleaningView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {


    TabController controller;


    @override
    void initState(){
      super.initState();
      controller=new TabController(length: 3, vsync: this);
    }

    int _currentIndex = 0;
    List <Widget> Child = [
      snowView(),
    ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
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
                      SizedBox(height:4),
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
                            child: Text("Cleaning", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right:20.0),
                            child: Card(
                              elevation:2,
                              child: Container(
                                  child:Icon(Icons.search)
                              ),
                            ),
                          ),
                          // searchAnimate(),
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


                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                              InkWell(
                                  child: Container(
                                    height: 145,
                                    width: 150,
                                    child: Card(
                                      color:cardcolor1,
                                      // elevation: 5,
                                      shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                        bottom: 8.0, left: 8),
                                        child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            height: 80,
                                            child: Image.asset(
                                              "lib/assets/images/Home.png",
                                              height: MediaQuery.of(context).size.height /10,
                                              width: 100,
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "Home/Office",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(top: 3.0),
                                          child: Text("Cleaning",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13)),
                                        ),
                                      ],
                                    ),
                                      ),
                                    ),
                                  ),
                              onTap: (){setState(() {
                              if(homevisibility==false){
                                homevisibility=true;
                                snowvisibility=false;
                                lawnvisibility=false;
                                poolvisibility=false;
                                cardcolor1=Colors.red;
                                cardcolor2=Color(0XFFBCBDC1);
                                cardcolor3=Color(0XFFBCBDC1);
                                cardcolor4=Color(0XFFBCBDC1);}
                              else if (homevisibility==true){
                                homevisibility=true;
                                cardcolor1=Colors.red;
                              }

                            });},
                            ),
                              InkWell(
                                child: Container(
                                  height: 145,
                                  width: 150,
                                  child: Card(
                                    color:cardcolor2,
                                    // elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 8.0, left: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              height: 80,
                                              child: Image.asset(
                                                "lib/assets/images/snow.png",
                                                height: MediaQuery.of(context).size.height /10,
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Snow",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Text("Cleaning",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),onTap: (){setState(() {
                                if (snowvisibility==false) {
                                  snowvisibility=true;
                                  homevisibility=false;
                                  lawnvisibility=false;
                                  poolvisibility=false;
                                  cardcolor2 = Colors.red;
                                  cardcolor1 = Color(0XFFBCBDC1);
                                  cardcolor3 = Color(0XFFBCBDC1);
                                  cardcolor4 = Color(0XFFBCBDC1);
                                }else if (snowvisibility==true){
                                  snowvisibility=true;
                                  cardcolor2= Colors.red;
                                }
                              }
                              );},
                              ),
                              InkWell(
                                child: Container(
                                  height: 145,
                                  width: 150,
                                  child: Card(
                                    color:cardcolor3,
                                    // elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 8.0, left: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              height: 80,
                                              child: Image.asset(
                                                "lib/assets/images/image.png",
                                                height: MediaQuery.of(context).size.height /10,
                                                width: 100,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Lawn Mowing",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Text("Cleaning",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),onTap: (){setState(() {
                                if(lawnvisibility ==false) {
                                  lawnvisibility=true;
                                  snowvisibility=false;
                                  homevisibility=false;
                                  poolvisibility=false;
                                  cardcolor3 = Colors.red;
                                  cardcolor2 = Color(0XFFBCBDC1);
                                  cardcolor1 = Color(0XFFBCBDC1);
                                  cardcolor4 = Color(0XFFBCBDC1);
                                }else if(lawnvisibility==true){
                                  lawnvisibility=true;
                                  cardcolor3=Colors.red;
                                }
                              });},
                              ),
                              InkWell(
                                child: Container(
                                  height: 145,
                                  width: 150,
                                  child: Card(
                                    color:cardcolor4,
                                    // elevation: 5,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 8.0, left: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Image.asset(
                                              "lib/assets/images/homewhite.png", //Change this rn
                                              height: MediaQuery.of(context).size.height /10,
                                              width: 100,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            "Pool",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.white),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Text("Cleaning",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),onTap: (){setState(() {
                                if(poolvisibility==false) {
                                  poolvisibility=true;
                                  lawnvisibility=false;
                                  snowvisibility=false;
                                  homevisibility=false;
                                  cardcolor4=Colors.red;
                                  cardcolor2 = Color(0XFFBCBDC1);
                                  cardcolor3 = Color(0XFFBCBDC1);
                                  cardcolor1 = Color(0XFFBCBDC1);
                                }
                                else if (poolvisibility==true){
                                  poolvisibility=true;
                                  cardcolor4=Colors.red;
                                }
                              });},
                              ),],),
                          ),

                             SizedBox(height: 20,),




                             Positioned(top: 100,left: 20,
                               child:  Visibility(visible: homevisibility,child:Container(child: homeView(),height: MediaQuery.of(context).size.height/2.5,)),
                             ),
                          Positioned(top: 100,left: 20,
                            child:  Visibility(visible: snowvisibility,child:Container(child: snowView(),height: MediaQuery.of(context).size.height/2.5)),
                          ),
                          Positioned(top: 100,left: 20,
                            child:  Visibility(visible: lawnvisibility,child:Container(child:lawnLanding(),height: MediaQuery.of(context).size.height/2.5)),
                          ),
                          Positioned(top: 100,left: 20,
                            child:  Visibility(visible: poolvisibility,child:Container(child: poolLanding(),height: MediaQuery.of(context).size.height/2.5)),
                          ),



                      SizedBox(height: 25,),

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
                                splashColor: Colors.black12,
                                onPressed: () {
                                  _settingModalBottomSheet(context);
                                },
                                child: Text(
                                  "CUSTOMIZE",
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ),
                            ),
                            Container(
                              width:150,
                              decoration:BoxDecoration(
                                borderRadius:BorderRadius.circular(10)
                              ),
                              child: FlatButton(
                                color: Colors.red,
                                textColor: Colors.white,
                                disabledColor: Colors.grey,
                                disabledTextColor: Colors.black,
                                padding: EdgeInsets.all(8.0),
                                splashColor: Color(0xFFFC7594),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => cleaningLanding()));
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

              ],
            ),
          ),
        ]
      ),
    ))));
  }
}


void _settingModalBottomSheet(context){
  showModalBottomSheet(
    backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext bc){
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight:Radius.circular(15), topLeft:Radius.circular(15)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left:14.0, right:14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Customize", style: TextStyle(fontFamily: "monb", fontSize: 19),),
                    Spacer(),
                    Text("70\$", style: TextStyle(fontFamily: "monb", fontSize: 22),),
                  ],
                ),

                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 165,
                      height: 60,
                      child: Card(
                          color: appColors.redColor,
                        child: Center(child: Text("Regular", style: TextStyle(fontFamily: "opsb", color: Colors.white),))
                        ),
                      ),
                    Container(
                      width: 165,
                      height: 60,
                      child: Card(
                          color: Color(0xFFBCBDC1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Express",style: TextStyle(fontFamily: "opsb", color: Colors.white),),
                              Text("Within 3 Hrs: \$ x1.5",style: TextStyle(fontSize:11,fontFamily: "opsb", color: Colors.white),),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("Name", style:TextStyle(fontFamily: "opsb", fontSize: 16)),
                    Spacer(),
                    Text("Qty", style:TextStyle(fontFamily: "opsb", fontSize: 16)),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Text("Additional ft2:", style:TextStyle(fontFamily: "opbb" ,fontWeight: FontWeight.bold, fontSize: 13)),
                    Spacer(),
                    Text("10\$/1500 ft2", style:TextStyle(fontFamily: "opbb",fontWeight: FontWeight.bold, fontSize: 13)),
                    SizedBox(width: 4,),
                    Container(
                      child: CustomStepper(
                        lowerLimit: 0,
                        upperLimit: 20,
                        stepValue: 1,
                        iconSize: 22.0,
                        value: 0,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 13,),
                Text("Addon Services", style: TextStyle(fontFamily: "opsb", fontSize: 14),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color:Color(0xFFE4E4E4),
                      width: 90,
                      height: 30,
                      child: Center(child: Text("Bags/Discard", style: TextStyle(fontSize: 12),)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color:Color(0xFFE4E4E4),
                      width: 70,
                      height: 30,
                      child: Center(child: Text("Trimming", style: TextStyle(fontSize: 12),)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color:Color(0xFFE4E4E4),
                      width: 70,
                      height: 30,
                      child: Center(child: Text("Edging", style: TextStyle(fontSize: 12),)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color:Color(0xFFE4E4E4),
                      width: 70,
                      height: 30,
                      child: Center(child: Text("Tall Grass", style: TextStyle(fontSize: 12),)),
                    ),
                  ],
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width:90,
                        // color: Colors.blue,
                        child:
                        Center(
                            child: Text("15\$"))),
                    SizedBox(width: 10,),
                    Container(
                      // color: Colors.blue,
                        width: 70,
                        child: Center(child: Text("25\$"))),
                    SizedBox(width: 10,),
                    Container(
                      width: 70,
                        // color: Colors.blue,
                        child: Center(child: Text("25\$"))),
                    SizedBox(width: 10,),
                    Container(
                        width: 70,
                        // color: Colors.blue,
                        child: Center(child: Text("20\$"))),
                  ],
                ),
                SizedBox(height: 20,),

                InkWell(
                  onTap: (){
                    //sth
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Card(
                        color: appColors.redColor,
                        child: Center(child: Center(child: Text("Book now",style: TextStyle(fontFamily: "opsb", color: Colors.white),)))
                    ),
                  ),
                ),



            ],
            ),
          ),
        );
      }
  );
}


class CustomStepper extends StatefulWidget {
  CustomStepper({
    @required this.lowerLimit,
    @required this.upperLimit,
    @required this.stepValue,
    @required this.iconSize,
    @required this.value,
  });

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  final double iconSize;
  int value;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          child: RoundedIconButton(
            icon: Icons.remove,
            iconSize: widget.iconSize,
            onPress: () {
              setState(() {
                widget.value =
                widget.value == widget.lowerLimit ? widget.lowerLimit : widget.value -= widget.stepValue;
              });
            },
          ),
        ),
        Card(
          elevation: 1,
          child: Container(
            width: 20,
            child: Text(
              '${widget.value}',
              style: TextStyle(
                fontSize: widget.iconSize * 0.8,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          width: 20,
          child: RoundedIconButton(
            icon: Icons.add,
            iconSize: widget.iconSize,
            onPress: () {
              setState(() {
                widget.value =
                widget.value == widget.upperLimit ? widget.upperLimit : widget.value += widget.stepValue;
              });
            },
          ),
        ),
      ],
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton(
      {@required this.icon, @required this.onPress, @required this.iconSize});

  final IconData icon;
  final Function onPress;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: iconSize, height: iconSize),
      elevation: 3.0,
      onPressed: onPress,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(iconSize * 0.2)),
      fillColor: Color(0xFF454545),
      child: Icon(
        icon,
        color: Colors.white,
        size: iconSize * 0.8,
      ),
    );
  }
}