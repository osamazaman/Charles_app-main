
import 'package:charles_app/View/login/Loginnn.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';



class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // TextEditingController fname=new TextEditingController();
  // TextEditingController email=new TextEditingController();
  // TextEditingController phone=new TextEditingController();
  // TextEditingController Pass=new TextEditingController();
  // FirebaseAuth _auth = FirebaseAuth.instance;
  // DatabaseReference dbRef = FirebaseDatabase.instance.reference().child("Users");
  final _formKey = GlobalKey<FormState>();
  // void registerToFb() {
  //   _auth
  //       .createUserWithEmailAndPassword(
  //       email: email.text, password: Pass.text)
  //       .then((result) {
  //     dbRef.child(result.user.uid).set({
  //       "Email": email.text,
  //       "Password":Pass.text,
  //       "FirstName": fname.text,
  //       "Phone Number":phone.text,
  //       "Profile Image URl":"",
  //     }).then((res) {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(builder: (context) => IntroPage()),
  //       );
  //     });
  //   }).catchError((err) {
  //     showDialog(
  //         context: context,
  //         builder: (BuildContext context) {
  //           return AlertDialog(
  //             title: Text("Error"),
  //             content: Text(err.message),
  //             actions: [
  //               FlatButton(
  //                 child: Text("Ok"),
  //                 onPressed: () {
  //                   Navigator.of(context).pop();
  //                 },
  //               )
  //             ],
  //           );
  //         });
  //   });
  // }
  @override
  // void dispose() {
  //   super.dispose();
  //   fname.dispose();
  //   email.dispose();
  //   Pass.dispose();
  //   phone.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  SizedBox(height: 50,),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset("lib/assets/images/loginlogo.png",height: 120,width: 120,),
                  ),
                  SizedBox(height: 20,),
                  Align(
                      alignment: Alignment.center,
                      child: Text("Hello",style: TextStyle(
                          fontSize: 54,
                          color: Colors.black,
                          fontFamily: "monr",
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                  SizedBox(height: 7,),
                  Align(
                      alignment: Alignment.center,
                      child: Text("Sign up your account",style: TextStyle(
                          fontSize: 17,
                          fontFamily: "monr",
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),)
                  ),
                  SizedBox(height: 40,),

                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      // controller: fname,
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Enter First Name';
                      //   }
                      //   return null;
                      // },
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: "sour"

                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.person,color: Colors.black,size: 20,),
                        hintText: "Full Name",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: "sour"

                        ),



                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      // controller: email,
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Enter Email';
                      //   }
                      //   return null;
                      // },
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: "sour"

                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.email,color: Colors.black,size: 20,),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: "sour"

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
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      // controller: phone,
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Enter Phone Number';
                      //   }
                      //   return null;
                      // },
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: "sour"

                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.add_call,color: Colors.black,size: 20,),
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: "sour"

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
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: TextFormField(
                      // controller: Pass,
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return 'Enter Password';
                      //   }
                      //   return null;
                      // },
                      obscureText: true,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: "sour"

                      ),
                      decoration: InputDecoration(

                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.lock,color: Colors.black,size: 20,),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: "sour"

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
                  Padding(
                    padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                    child: TextField(

                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontFamily: "sour"

                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        prefixIcon: Icon(Icons.lock,color: Colors.black,size: 20,),
                        hintText: "Confirm Password",
                        hintStyle: TextStyle(
                            fontSize: 16,
                            fontFamily: "sour"

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
                          child: new Text("Sign Up",
                              style: const TextStyle(
                                  fontFamily: 'asdf',
                                  color: Colors.white,

                                  //fontStyle: FontStyle.normal,
                                  fontSize: 16.0))),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginn(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        ),


      ),
    );
  }
}
