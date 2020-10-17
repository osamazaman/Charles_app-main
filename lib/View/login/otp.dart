import 'package:charles_app/View/Homepage/Home.dart';
import 'package:charles_app/View/bottom.dart';
import 'package:flutter/material.dart';

class otpScreen extends StatefulWidget {
  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> with TickerProviderStateMixin {
  AnimationController controller;
  bool textvisibility = true;
  bool textvisibility2 = false;
  var test = 100;
  void initState() {
    controller = AnimationController(
        duration: Duration(
          seconds: 5,
        ),
        vsync: this,
        upperBound: 300,
        lowerBound: 0);
    controller.reverse(from: 300);
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
    // setState(() {
    //   if (controller.value != 0) {
    //     onchangetext = Text('text 1');
    //   } else if (controller.value >= 0) {
    //     onchangetext = Text('text 2');
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "lib/assets/images/loginlogo.png",
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontFamily: "monb",
                      // fontWeight: FontWeight.bold
                    ),
                  )),
              SizedBox(
                height: 7,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "OTP sent again!",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "monr",
                      color: Colors.black,
                      // fontWeight: FontWeight.bold
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Theme(
                    data: new ThemeData(
                        primaryColor: Colors.grey[400],
                        accentColor: Colors.grey[400],
                        hintColor: Colors.green),
                    child: TextField(
                      onChanged: (value) {
                        decoration:
                        InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_in_talk,
                              size: 20,
                              color: Colors.black,
                            ),
                            hintText: "Mobile Number",
                            hintStyle: TextStyle(
                                fontFamily: "sour", color: Colors.black));
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, right: 40),
                color: Colors.red,
                height: 2,
                width: controller.value,
                child: Text(''),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.only(right: 30),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          test = 50;
                          if (controller.value != 0) {
                            textvisibility = true;
                            textvisibility2 = false;
                          } else if (controller.value == 0) {
                            textvisibility = false;
                            textvisibility2 = true;
                            print(textvisibility);
                          }
                        });
                        initState();
                      },
                      child: Text('Resend'),
                    ),
                  )),
              Center(
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFF34C4329).withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: Offset(0, 2),
                      )
                    ],
                    color: Colors.red,
                  ),
                  child: FlatButton(
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    splashColor: Color(0xFFFC7594),
                    onPressed: () {
                       Navigator.push(context,
                           MaterialPageRoute(builder: (context) => home_sc()));
                    },
                    child: Text(
                      "Send Code",
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: "monr"),
                    ),
                  ),
                ),
              ),
              Center(
                child: Visibility(
                    visible: textvisibility,
                    child: Container(
                      child: Text(
                        'Your One Time Password has been sent to your mobile phone. Please enter the number below.',
                        textAlign: TextAlign.center,
                      ),
                      height: MediaQuery.of(context).size.height / 4,
                      width: 200,
                      alignment: Alignment.center,
                    )),
              ),
              Center(
                child: Visibility(
                    visible: textvisibility2,
                    child: Container(
                      child: Text(
                        'Your One Time Password has been sent to your mobile phone again. Please enter the number below.',
                        textAlign: TextAlign.center,
                      ),
                      height: MediaQuery.of(context).size.height / 4,
                      width: 200,
                      alignment: Alignment.center,
                    )),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Terms & Conditions",
                      style: TextStyle(
                          fontFamily: "soui",
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                          fontFamily: "soui",
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
