import '../../Component/searchButton.dart';

import 'package:charles_app/View/Caring/paymentMethod.dart';
import 'package:charles_app/View/Laundry/ToggleButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

final format = DateFormat("yyyy-MM-dd");

class cleaningLanding extends StatefulWidget {
  @override
  _cleaningLandingState createState() => _cleaningLandingState();
}

class _cleaningLandingState extends State<cleaningLanding> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            color: Colors.white,
            child: Stack(
              children: [
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
                  padding: const EdgeInsets.only(left:22.0,right:22),
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
                              child: Container(child: Icon(Icons.arrow_back_ios,))),
                          Text("2 Car Driveway", style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),),
                          Spacer(),
                          // searchAnimate(),
                          Card(
                            elevation:2,
                            child: Container(
                              child:Icon(Icons.search)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text("Date, Time & Location", style: TextStyle(fontFamily:"opsb",fontSize: 20),),
                      ),


                      SizedBox(height: 20,),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 4,),


                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: new TextField(
                              textAlign: TextAlign.left,
                              decoration: new InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                                floatingLabelBehavior:FloatingLabelBehavior.always,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black, width: 0.4),
                                ),

                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.black)),
                                hintText: 'Location - MAP',
                                labelText: 'Address',

                              ),
                            ),
                          ),
                          SizedBox(height:20),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: GestureDetector(
                              child: AbsorbPointer(
                                child: new TextField(
                                  decoration: new InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                                    floatingLabelBehavior:FloatingLabelBehavior.always,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black, width: 0.4),
                                    ),

                                    border: new OutlineInputBorder(
                                        borderSide: new BorderSide(color: Colors.black)),
                                    hintText: 'MM - DD - YY',
                                    labelText: 'Preferred Date',

                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height:20),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width,
                            child: GestureDetector(
                              child: AbsorbPointer(
                                child: new TextField(
                                  decoration: new InputDecoration(
                                    contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 20.0, 10.0),
                                    floatingLabelBehavior:FloatingLabelBehavior.always,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.black, width: 0.4),
                                    ),

                                    border: new OutlineInputBorder(
                                        borderSide: new BorderSide(color: Colors.black)),
                                    hintText: 'HH - MM',
                                    labelText: 'Preferred Time',

                                  ),
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Recurrent"),
                          toggle(),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFE4E4E4),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Text("Daily")),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 120,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFE4E4E4),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Weekly-"),
                                Text("15% off", style: TextStyle(color:Colors.red),)
                              ],
                            )),
                          ),
                          SizedBox(width: 15,),
                          Container(
                            width: 80,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color(0xFFE4E4E4),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Text("Monthly")),
                          ),
                        ],
                      ),
                      SizedBox(height: 80,),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("2 Cars"),
                            Text("20\$")
                          ],
                        ),
                      ),

                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Regular"),
                            Text("-")
                          ],
                        ),
                      ),

                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Salting", style: TextStyle(color: Colors.grey[500]),),
                            Text("10\$/Car", style: TextStyle(color: Colors.grey[500]),)
                          ],
                        ),
                      ),

                      SizedBox(height: 6,),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total", style: TextStyle(fontSize:22,fontWeight: FontWeight.bold,)),
                            Text("20\$", style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),

                      Padding(
                        padding: const EdgeInsets.only(left:4,right:8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: Color(0xFFFF0000),
                            textColor: Colors.grey,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.blueAccent,
                            onPressed: () {
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (context) => paymentMethod()));
                            },
                            child: Text(
                              "BOOK NOW",
                              style: TextStyle(fontSize: 13.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ],),
          ),

        ),
      ),
    );

  }
}
// import '../../Component/searchButton.dart';
//
// import 'package:charles_app/View/Caring/paymentMethod.dart';
// import 'package:charles_app/View/Laundry/ToggleButton.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
//
// final format = DateFormat("yyyy-MM-dd");
//
// class cleaningLanding extends StatefulWidget {
//   @override
//   _cleaningLandingState createState() => _cleaningLandingState();
// }
//
// class _cleaningLandingState extends State<cleaningLanding> {
//
//   TimeOfDay time;
//   DateTime selectedDate = DateTime.now();
//   TextEditingController _date = new TextEditingController();
//
//   Future<Null> _selectDate(BuildContext context) async {
//     final DateTime picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         firstDate: DateTime(2020, 1),
//         lastDate: DateTime(2100));
//     if (picked != null && picked != selectedDate)
//       setState(() {
//         selectedDate = picked;
//         _date.value = TextEditingValue(text: picked.toString());
//       });
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: DefaultTabController(
//           length: 1,
//           initialIndex: 0,
//           child: Scaffold(
//             body: SingleChildScrollView(
//               child: Stack(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left:180.0),
//                     child: Container(
//                       height: 200,
//                       width: 250,
//                       child: Opacity(
//                           opacity: 0.3,
//                           child: Image.asset("lib/assets/images/logo.png")),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left:12.0,right:8),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             InkWell(
//                                 onTap: ()=>{
//                                   Navigator.pop(context)
//                                 },
//                                 child: Container(child: Icon(Icons.arrow_back_ios,))),
//                             Text("Cleaning", style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 18),),
//                             Spacer(),
//                             searchAnimate(),
//                           ],
//                         ),
//                         SizedBox(height: 3,),
//                         Padding(
//                           padding: const EdgeInsets.only(left:5.0),
//                           child: Text("Choose Service", style: TextStyle(fontSize: 20),),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left:5.0),
//                           child: Text("Drag to select your desired service"),
//                         ),
//
//                         SizedBox(height: 5,),
//                         Row(
//                           children: [
//                             Container(
//                               width: 170,
//                               height: 120,
//                               child: Card(
//                                 color: Color(0xFFFA4770),
//                                 elevation: 5,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//
//
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(bottom:8.0,left: 8),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//
//                                       Spacer(),
//                                       Text(
//                                         "Regular",
//                                         textAlign: TextAlign.left,
//                                         style: TextStyle(fontSize: 18.0,color: Colors.white),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(top:3.0),
//                                         child: Text(
//                                             "No Salting",
//                                             style: TextStyle(color: Colors.white, fontSize: 13)
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               width: 170,
//                               height: 120,
//                               child: Card(
//                                 color: Color(0xFFFC7594),
//                                 elevation: 5,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10)
//                                 ),
//
//
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(bottom:8.0,left: 8),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//
//                                       Spacer(),
//                                       Text(
//                                         "Salting",
//                                         textAlign: TextAlign.left,
//                                         style: TextStyle(fontSize: 18.0,color: Colors.white),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(top:3.0),
//                                         child: Text(
//                                             "Salts the area",
//                                             style: TextStyle(color: Colors.white, fontSize: 13)
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         TabBar(
//                           isScrollable: true,
//                           unselectedLabelColor: Colors.grey,
//                           labelColor: Colors.black,
//                           indicatorColor: Colors.transparent,
//                           tabs: <Widget>[
//                             Tab(
//                               child: Container(
//                                 height: 30,
//                                 alignment: Alignment.center,
//                                 child: Text(
//                                   "Date & Time", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           // color: Colors.red,
//                           height: MediaQuery.of(context).size.height/5,
//                           child:
//                           TabBarView(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(left:5,right:8.0),
//                                 child:
//                                 Container(
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       SizedBox(height: 4,),
//                                       Container(
//                                         height: 40,
//                                         width: MediaQuery.of(context).size.width,
//                                         child: GestureDetector(
//                                           onTap: ()=>_selectDate(context),
//                                           child: AbsorbPointer(
//                                             child: new TextField(
//                                               controller: _date,
//                                               keyboardType: TextInputType.datetime,
//                                               decoration: new InputDecoration(
//                                                 floatingLabelBehavior:FloatingLabelBehavior.always,
//                                                 enabledBorder: OutlineInputBorder(
//                                                   // borderSide: BorderSide(color: Colors.black, width: 1),
//                                                 ),
//
//                                                 border: new OutlineInputBorder(
//                                                     borderSide: new BorderSide(color: Colors.black)),
//                                                 hintText: 'MM - DD',
//                                                 labelText: 'Preferred Date',
//
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(height: 20,),
//                                       Container(
//                                         height: 40,
//                                         width: MediaQuery.of(context).size.width,
//                                         child: GestureDetector(
//                                           child: AbsorbPointer(
//                                             child: new TextField(
//                                               decoration: new InputDecoration(
//                                                 floatingLabelBehavior:FloatingLabelBehavior.always,
//                                                 enabledBorder: OutlineInputBorder(
//                                                   borderSide: BorderSide(color: Colors.black, width: 1),
//                                                 ),
//
//                                                 border: new OutlineInputBorder(
//                                                     borderSide: new BorderSide(color: Colors.black)),
//                                                 hintText: 'HH - MM',
//                                                 labelText: 'Preferred Time',
//
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text("Recurrent"),
//                             toggle(),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Container(
//                               color: Color(0xFFE4E4E4),
//                               width: 70,
//                               height: 30,
//                               child: Center(child: Text("Daily")),
//                             ),
//                             Container(
//                               color: Color(0xFFE4E4E4),
//                               width: 70,
//                               height: 30,
//                               child: Center(child: Text("Weekly")),
//                             ),
//                             Container(
//                               color: Color(0xFFE4E4E4),
//                               width: 70,
//                               height: 30,
//                               child: Center(child: Text("Monthly")),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Padding(
//                           padding: const EdgeInsets.only(left:8.0,right: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("2 Cars"),
//                               Text("20\$")
//                             ],
//                           ),
//                         ),
//
//                         SizedBox(height: 3,),
//                         Padding(
//                           padding: const EdgeInsets.only(left:8.0,right: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Regular"),
//                               Text("-")
//                             ],
//                           ),
//                         ),
//
//                         SizedBox(height: 3,),
//                         Padding(
//                           padding: const EdgeInsets.only(left:8.0,right: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Salting", style: TextStyle(color: Colors.grey[500]),),
//                               Text("10\$/Car", style: TextStyle(color: Colors.grey[500]),)
//                             ],
//                           ),
//                         ),
//
//                         SizedBox(height: 6,),
//                         Padding(
//                           padding: const EdgeInsets.only(left:8.0,right: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Total", style: TextStyle(fontSize:22,fontWeight: FontWeight.bold,)),
//                               Text("20\$", style: TextStyle(fontSize:22,fontWeight: FontWeight.bold),)
//                             ],
//                           ),
//                         ),
//
//                         Padding(
//                           padding: const EdgeInsets.only(left:4,right:8.0),
//                           child: Container(
//                             width:MediaQuery.of(context).size.width,
//                             child: FlatButton(
//                               color: Color(0xFFFF0000),
//                               textColor: Colors.grey,
//                               disabledColor: Colors.grey,
//                               disabledTextColor: Colors.black,
//                               padding: EdgeInsets.all(8.0),
//                               splashColor: Colors.blueAccent,
//                               onPressed: () {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(builder: (context) => paymentMethod()));
//                               },
//                               child: Text(
//                                 "BOOK NOW",
//                                 style: TextStyle(fontSize: 13.0, color: Colors.white),
//                               ),
//                             ),
//                           ),
//                         ),
//
//
//                       ],
//                     ),
//                   ),
//                 ],),
//
//             ),
//           )
//       ),
//     );
//
//   }
// }
