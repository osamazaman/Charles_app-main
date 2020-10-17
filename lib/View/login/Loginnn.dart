import 'package:charles_app/View/login/forgotPassword.dart';
import 'package:charles_app/View/login/otp.dart';
import 'package:charles_app/View/login/signup.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import '../bottom.dart';


class Loginn extends StatefulWidget {
  @override
  _LoginnState createState() => _LoginnState();
}
// var Email1, Password1;
// bool loginsuccess=false;
// var exceptions;
// FirebaseAuth _auth = FirebaseAuth.instance;
class _LoginnState extends State<Loginn> {
  // TextEditingController email= TextEditingController();
  // TextEditingController Pass= TextEditingController();
  // FirebaseAuth firebaseAuth=  FirebaseAuth.instance;
//  void emailData() async{
//
//
////
////    DatabaseReference dbref= FirebaseDatabase.instance.reference()
////        .child("Users");
////    await dbref.once().then((DataSnapshot dataSnapshot){
////    this.setState((){
////    for(var value in dataSnapshot.value.values) {
////        var emai= Users.fromJson(value).Email;
////        var pho= Users.fromJson(value).PhoneNumber;
////          if(phone.text==pho){
////          }
////
//////        print(a.toString());
////    }
////    });
////    });
//
//
//  }

  String dropdownValue = '+92';
  String _selected;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.center,
                child: Image.asset("lib/assets/images/loginlogo.png",height: 120,width: 120,),
              ),
              SizedBox(height: 5,),
              Align(
                  alignment: Alignment.center,
                  child: Text("Hello",style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontFamily: "monb",
                      // fontWeight: FontWeight.bold
                  ),)
              ),
              SizedBox(height: 7,),
              Align(
                  alignment: Alignment.center,
                  child: Text("Sign in to your account",style: TextStyle(
                      fontSize: 17,
                      fontFamily: "monr",
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),)
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   height: 40,
                  //   width: 60,
                  //   child: DropdownButton<String>(
                  //     value: dropdownValue,
                  //     icon: Icon(Icons.arrow_drop_down),
                  //     // iconSize: 24,
                  //     // elevation: 16,
                  //     style: TextStyle(color: Colors.black),
                  //     underline: Container(
                  //       height: 2,
                  //       color: Colors.black,
                  //     ),
                  //     onChanged: (String newValue) {
                  //       setState(() {
                  //         dropdownValue = newValue;
                  //       });
                  //     },
                  //     items: <String>['+1', '+2', '+44','+33']
                  //         .map<DropdownMenuItem<String>>((String value) {
                  //       return DropdownMenuItem<String>(
                  //         value: value,
                  //         child: Text(value),
                  //       );
                  //     }).toList(),
                  //   ),
                  //   padding: EdgeInsets.only(top: 3, right: 10),
                  // ),
                  Container(
                    height: 25,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 0.7, color: Colors.black))
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(

                        value: dropdownValue,

                        icon: Icon(Icons.arrow_downward,size: 13,),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.black),

                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['+92', '+00', '+12', '+55']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(

                            value: value,
                            child: Row(
                              children: [
                                Image.asset('lib/assets/images/flag.jpg',width: 30,),
                                SizedBox(width: 5,),
                                Text(value),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    // CountryCodePicker(
                    //   onChanged: print,
                    //   // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    //   initialSelection: 'IT',
                    //   favorite: ['+39','FR'],
                    //   // optional. Shows only country name and flag
                    //   showCountryOnly: false,
                    //   // optional. Shows only country name and flag when popup is closed.
                    //   showOnlyCountryWhenClosed: false,
                    //   // optional. aligns the flag and the Text left
                    //   alignLeft: false,
                    // ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Container(
                      height: 25,
                      width: 210,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone_in_talk, size: 20, color: Colors.black,),
                          hintText: "Mobile Number",
                        ),
                        keyboardType: TextInputType.number,
                        //cursorHeight: 25,
                        onChanged: (value) {},
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                child: TextField(

                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontFamily: "sour"

                  ),
                  // controller: Pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.lock,color: Colors.black,size: 20,),
                    hintText: "Password",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "sour",
                      color: Colors.black,

                    ),


//                            border: OutlineInputBorder(
//                                borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
//                                borderRadius: BorderRadius.circular(25.0)),
//                            focusedBorder: OutlineInputBorder(
//                                borderSide: BorderSide(color: Colors.white, width: 32.0),
//                                borderRadius: BorderRadius.circular(25.0)))),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                       Navigator.push(context, MaterialPageRoute(
                           builder: (context)=>forgotPw()));
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 30),
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                          fontFamily: "sour",
                          color: Colors.black,
                          fontSize: 14),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                child: Container(
                  width:
                  MediaQuery.of(context).size.width / 1.3,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Color.fromRGBO(248, 7, 89, 1),
                      Color.fromRGBO(243, 76, 67, 1)
                    ], begin: Alignment.bottomLeft),
//                              color: Color.fromRGBO(119, 0, 0, 1),

                    borderRadius: BorderRadius.circular(60.0),
                  ),
                  child: Center(
                      child: new Text("Sign in",
                          style: const TextStyle(
                              fontFamily: 'asdf',
                              color: Colors.white,

                              //fontStyle: FontStyle.normal,
                              fontSize: 16.0))),
                ),
                onTap: () {
                  // LoginwithEmail(email.text,Pass.text);
                 Navigator.push(
                   context,
                   MaterialPageRoute(
                     builder: (context) => otpScreen(),
                   ),
                 );
//                            _settingModalBottomSheet(context);
                },
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center ,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Dont't have an account?",style: TextStyle(
                        fontFamily: "soui",
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontSize: 14),textAlign: TextAlign.right,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      child: Text(
                        "Sign up",style: TextStyle(
                        fontFamily: "soui",
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[800],
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),textAlign: TextAlign.right,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  child: Image.asset("lib/assets/images/logos.png")
              ),
              SizedBox(height: 15,),
              Container(
                height: 40,
                width:100,
                decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(30),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.red.withOpacity(0.2),
                    blurRadius: 2,
                    spreadRadius: 1,
                    // offset: Offset(0,2),
                  )],
                ),
                child: FlatButton(
                  textColor: Colors.white,
                  disabledColor: Colors.grey,
                  disabledTextColor: Colors.black,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Color(0xFFFC7594),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => cleaningLanding()));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 13.0, color: Colors.red, fontFamily: "monr"),
                  ),
                ),
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:18.0),
                      child: Text("Terms & Conditions", style: TextStyle(fontFamily: "soui",
                        fontStyle: FontStyle.italic, decoration: TextDecoration.underline),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:18.0),
                      child: Text("Privacy Policy", style: TextStyle(fontFamily: "soui",
                        fontStyle: FontStyle.italic,decoration: TextDecoration.underline),),
                    ),
                  ],
                ),
              ),




            ],
          ),
        ),


      ),
    );

  }
  // Future LoginwithEmail(var email, var pass) async {
  //   try {
  //     await _auth.signInWithEmailAndPassword(email: email, password: pass);
  //     loginsuccess=true;
  //     print(loginsuccess);
  //     print(_auth.currentUser.uid);
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => home_sc(),
  //       ),
  //     );
  //   } catch (e) {
  //     exceptions = e;
  //     loginsuccess=false;
  //
  //   }
  // }
}
