import 'package:charles_app/Model/PopularServicesHp/popularBuilder.dart';
import 'package:charles_app/Model/RecommendationHp/recomBuilder.dart';
import 'package:charles_app/Model/promotionServicesHp/promotionBuilder.dart';
import 'package:charles_app/Model/servicesHomePage/servicesBuilder.dart';
import 'package:charles_app/View/setLocation.dart';
import 'package:charles_app/assets/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer:drawersr(20.0,20.0).drawers( context),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            color: Colors.white,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height / 5,
                  width: size.width / 2.5,
                  margin: EdgeInsets.only(top:25,left: 220),
                  child: Opacity(
                    opacity: 1.0,
                    child: Image.asset(
                      'lib/assets/images/logo.png',
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:12,bottom: 30),
                          child: Builder(
                            builder: (BuildContext context){
                              return
                                InkWell(
                                  onTap: ()=>{
                                    Scaffold.of(context).openDrawer(),
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:18.0),
                                    child: Container(
                                      // padding: EdgeInsets.only(bottom: 5),
                                      width: 40,
                                      // height: 100,
                                      color: Colors.transparent,
                                      child:Image.asset('lib/assets/images/menu.png', height: 15,)
                                      // IconButton(
                                      //
                                      //   icon: Icon(Icons.menu, size: 22, color: Colors.black,),
                                      //   color: Colors.black,
                                      //   onPressed: ()=>{
                                      //     Scaffold.of(context).openDrawer(),
                                      //   },
                                      //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                                      // ),
                                    ),
                                  ),
                                );
                            },
                          ),
                        ),

                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  alignment: Alignment.bottomRight,
                                  // padding: EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Hi, Charles',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'monb',
                                        color: Color.fromRGBO(69, 69, 69, 1)
                                    ),
                                  )),
                              Container(
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => setLocation(),
                                              ));
                                        },
                                        child: Container(
                                          height: 12,
                                            child: Icon(Icons.my_location, size: 13,)),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width/2,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left:8.0),
                                          child: Text(
                                            'LYTTON PARK, Toronto Canada',
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: 'opsr'
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Spacer(),
                        CircleAvatar(
                          radius: 30,
                          child: Image.asset("lib/assets/images/dp.png"),
                          backgroundColor: Colors.transparent,
                        ),
                        Spacer(),
                      ],
                    ),
                    Container(
                      width: size.width / 1.1,
                      height: 38,
                      padding: EdgeInsets.only( top: 5,left: 10),
                      child: TextField(
                        // cursorHeight: 20,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                            top: 10,
                          ),
                          filled: true,
                          fillColor: Colors.white70,
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search,size: 20,
                              color: Color.fromRGBO(69, 69, 69, 1)
                          ),
                          hintText: 'Looking for something',
                          hintStyle: TextStyle(color: Color(0xFFAAAAAA), fontSize: 10),

                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3.5,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left:10),
                            child: Text(
                              'Services',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'opsb',
                                  color: Color.fromRGBO(69, 69, 69, 1)
                              ),
                            ),
                          ),
                          Container(
                             // height:135,
                              child: Servicebuilder()),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3.3,
                      width: size.width,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Popular Services',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'opsb',
                                  color: Color.fromRGBO(69, 69, 69, 1),

                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'In your area Linton park',
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'opsr',
                                  color: Color.fromRGBO(69, 69, 69, 1)

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: PServicebuilder(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3,
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Promotions',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'opsb'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: ProServicebuilder(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3,
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'On Going Jobs- 4',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'opsb'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: ProServicebuilder(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.topLeft,
                      height: size.height / 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Recommendation',
                              style: TextStyle(
                                  fontSize: 20, fontFamily: 'opsb'),
                            ),
                          ),
                          Recommendationbuilder(),
                        ],
                      ),
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

