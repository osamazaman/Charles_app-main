import '../../Component/searchButton.dart';

import 'package:charles_app/View/Caring/paymentMethod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

final format = DateFormat("yyyy-MM-dd");

class caringLanding extends StatefulWidget {
  @override
  _caringLandingState createState() => _caringLandingState();
}

class _caringLandingState extends State<caringLanding> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          body: SingleChildScrollView(
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
                  padding: const EdgeInsets.only(left:12.0,right:8),
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
                      Text("Caring", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),),
                      Spacer(),
                      searchAnimate(),
                    ],
                    ),
                      SizedBox(height: 3,),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text("Choose Service", style: TextStyle(fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text("Drag to select your desired service"),
                      ),

                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                            width: 170,
                            height: 120,
                            child: Card(
                              color: Color(0xFF4DCFFF),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),


                              child: Padding(
                                padding: const EdgeInsets.only(bottom:8.0,left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Spacer(),
                                    Text(
                                      "LPN",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0),
                                      child: Text(
                                          "Licensed Practical Nurse",
                                          style: TextStyle(color: Colors.white, fontSize: 13)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 170,
                            height: 120,
                            child: Card(
                              color: Color(0xFFA6E7FF),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),


                              child: Padding(
                                padding: const EdgeInsets.only(bottom:8.0,left: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Spacer(),
                                    Text(
                                      "RPN",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(fontSize: 18.0,color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0),
                                      child: Text(
                                          "Registered Practical Nurse",
                                          style: TextStyle(color: Colors.white, fontSize: 13)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                            TabBar(
                              isScrollable: true,
                              unselectedLabelColor: Colors.grey,
                              labelColor: Colors.black,
                              indicatorColor: Colors.transparent,
                              tabs: <Widget>[
                                Tab(
                                  child: Container(
                                    height: 30,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Time", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Information", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              // color: Colors.red,
                              height: MediaQuery.of(context).size.height/3,
                              child:
                              TabBarView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left:5,right:8.0),
                                    child:
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 4,),
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context).size.width,
                                            child: new TextField(
                                              onTap: ()=>{
                                                DateTimeField(
                                                  format: format,
                                                  onShowPicker: (context, currentValue) {
                                                    return showDatePicker(
                                                        context: context,
                                                        firstDate: DateTime(1900),
                                                        initialDate: currentValue ?? DateTime.now(),
                                                        lastDate: DateTime(2100));
                                                  },
                                                ),
                                              },
                                              decoration: new InputDecoration(
                                                floatingLabelBehavior:FloatingLabelBehavior.always,
                                                enabledBorder: OutlineInputBorder(
                                                  // borderSide: BorderSide(color: Colors.black, width: 1),
                                                ),

                                                border: new OutlineInputBorder(
                                                    borderSide: new BorderSide(color: Colors.black)),
                                                hintText: 'MM - DD',
                                                labelText: 'Date',

                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context).size.width,
                                            child: new TextField(
                                              onTap: ()=>{
                                                DateTimeField(
                                                  format: format,
                                                  onShowPicker: (context, currentValue) {
                                                    return showDatePicker(
                                                        context: context,
                                                        firstDate: DateTime(1900),
                                                        initialDate: currentValue ?? DateTime.now(),
                                                        lastDate: DateTime(2100));
                                                  },
                                                ),
                                              },
                                              decoration: new InputDecoration(
                                                floatingLabelBehavior:FloatingLabelBehavior.always,
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black, width: 1),
                                                ),

                                                border: new OutlineInputBorder(
                                                    borderSide: new BorderSide(color: Colors.black)),
                                                hintText: 'HH - MM',
                                                labelText: 'Time',

                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Container(
                                            height: 40,
                                            width: MediaQuery.of(context).size.width,
                                            child: new TextField(
                                              onTap: ()=>{
                                                DateTimeField(
                                                  format: format,
                                                  onShowPicker: (context, currentValue) {
                                                    return showDatePicker(
                                                        context: context,
                                                        firstDate: DateTime(1900),
                                                        initialDate: currentValue ?? DateTime.now(),
                                                        lastDate: DateTime(2100));
                                                  },
                                                ),
                                              },
                                              decoration: new InputDecoration(
                                                floatingLabelBehavior:FloatingLabelBehavior.always,
                                                enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black, width: 1),
                                                ),

                                                border: new OutlineInputBorder(
                                                    borderSide: new BorderSide(color: Colors.black)),
                                                hintText: 'XYZ, lane 13, mno st',
                                                labelText: 'Address',

                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),
                                Container(
                                  child: Center(
                                    child: Text('Display Tab 2', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ],
                              ),
                            ),

                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Hrs"),
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
                            Text("LNP"),
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
                            Text("RNP", style: TextStyle(color: Colors.grey[500]),),
                            Text("-", style: TextStyle(color: Colors.grey[500]),)
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

                      Padding(
                        padding: const EdgeInsets.only(left:4,right:8.0),
                        child: Container(
                          width:MediaQuery.of(context).size.width,
                          child: FlatButton(
                            color: Color(0xFF4DCFFF),
                            textColor: Colors.grey,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.black,
                            padding: EdgeInsets.all(8.0),
                            splashColor: Colors.blueAccent,
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => paymentMethod()));
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
                )
            ),
    );

  }
}
