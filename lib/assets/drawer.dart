import 'package:charles_app/Component/ToggleButton.dart';
import 'package:charles_app/assets/appColors/appColors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'button.dart';

class drawersr {
  var heightq,widthq;
  drawersr(this.widthq,this.heightq);
  Widget drawers(BuildContext context) {
    return Container(
      width: 230,
      child: Drawer(

        child: SingleChildScrollView(
          child: Container(

            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 130,
                  color:appColors.redColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Charles",
                              style: TextStyle(fontFamily: "monr", fontSize: 20, color: Colors.white),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right:8.0),
                              child: Container(
                                height: 20,
                                width: 100,
                                child: RatingBar(
                                  initialRating: 1,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 15,
                                  unratedColor: Colors.grey[400],
                                  textDirection: TextDirection.ltr,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  onRatingUpdate: (rating) {
                                    Text('$rating', style: TextStyle(color: Colors.white),);
                                  },
                                ),
                              ),
                            ),

                            Text(" 4.5/5",style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 11),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: CircleAvatar(
                          radius: 50,
                          child: Image.asset("lib/assets/images/dp.png"),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],

                  ),
                ),
                SizedBox(height: 6,),
                Button(
                  onpressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => AcceptJobsAvailable()));
                  },
                  text: 'Home',
                  endtext: '',
                  // leadicon: Icons.find_replace,
                ),
                SizedBox(height: 6,),
                Button(
                    onpressed: () {},
                    text: 'My Booking',
                    // leadicon: Icons.chat_bubble,
                    ),
                SizedBox(height: 6,),
                Button(
                    onpressed: () {
                      {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Drawer_notes()));
                      }
                    },
                    text: 'My Account',
                    // leadicon: Icons.chat,
                    ),
                SizedBox(height: 6,),
                Button(
                  onpressed: () {
                    {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Calendarr()));
                    }
                  },
                  text: 'Bank Account',
                  // leadicon: Icons.calendar_view_day,
                  // endtext: '',
                ),
                SizedBox(height: 6,),
                Button(
                    onpressed: () {
                      {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => ManageAppointment()));
                      }
                    },
                    text: 'Bonus Invite',
                    // leadicon: Icons.location_on,
                    // endtext: ''
                ),
                SizedBox(height: 6,),
                Button(
                  onpressed: () {
                    {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => ManageAppointment()));
                    }
                  },
                  text: 'Support',
                  // leadicon: Icons.location_on,
                  // endtext: ''
                ),

                Divider(),
                Button(
                  onpressed: () {
                    {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => TabCase()));
                    }
                  },
                  text: 'About app',
                ),
                SizedBox(height: 6,),
                FlatButton(
                  onPressed: ()=>{
                    //sth
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:4.0),
                        child: Text("Tips At Start", style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "monr", fontWeight: FontWeight.bold),),
                      ),
                      Spacer(),
                      toggle(),
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                FlatButton(
                  onPressed: ()=>{
                    //sth
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:4.0),
                        child: Text("Notifications", style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "monr", fontWeight: FontWeight.bold),),
                      ),
                      Spacer(),
                      toggle(),
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                FlatButton(
                  onPressed: ()=>{
                    //sth
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:4.0),
                        child: Text("User Matric System", style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "monr", fontWeight: FontWeight.bold),),
                      ),
                      Spacer(),
                      toggle(),
                    ],
                  ),
                ),
                Divider(),
                FlatButton(
                  onPressed: ()=>{
                    //sth
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:4.0),
                        child: Text("Sign Out", style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: "monr", fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6,),

                Padding(
                  padding: const EdgeInsets.only(left:21.0),
                  child: Text("Follow us", style: TextStyle(fontFamily: "soui"),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:15.0),
                      child: Container(
                          height:25,child: Image.asset("lib/assets/images/socials.png")),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right:7.0),
                      child: Text("En", style: TextStyle(fontFamily: "soui",
                          fontStyle: FontStyle.italic,decoration: TextDecoration.underline),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right:13.0),
                      child: Text("Fr", style: TextStyle(fontFamily: "soui",
                          fontStyle: FontStyle.italic,decoration: TextDecoration.underline, color: Colors.grey),),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}