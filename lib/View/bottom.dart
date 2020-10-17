import 'package:charles_app/View/Homepage/Home.dart';
import 'package:charles_app/View/rollingNav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'indexed.dart';

double scaledHeight(BuildContext context, double baseSize) {
  return baseSize * (MediaQuery.of(context).size.height / 800);
}

double scaledWidth(BuildContext context, double baseSize) {
  return baseSize * (MediaQuery.of(context).size.width / 375);
}

class home_sc extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _home_scState createState() => _home_scState();
}

class _home_scState extends State<home_sc> {
  Color logoColor;
  int activeIndex=2;

  var iconData = <IconData>[
    Icons.calendar_today,
    Icons.chat,
    Icons.home,
    Icons.feedback,
    Icons.person_outline,
  ];
  final List<Widget> _children = [
    Mainpage(),
    Mainpage(),
    Mainpage(),
    Mainpage(),
    Mainpage(),
    // Watchlist(),
    // DashboardHome(),

  ];

  var badges = <int>[
    null, null, null, null, null
  ];

  var iconText = <Widget>[
    Text('Bookings', style: TextStyle(color: Colors.grey, fontSize: 12)),
    Text('messages', style: TextStyle(color: Colors.grey, fontSize: 12)),
    Text('Home', style: TextStyle(color: Colors.grey, fontSize: 12)),
    Text('Feed', style: TextStyle(color: Colors.grey, fontSize: 12)),
    Text('Profile', style: TextStyle(color: Colors.grey, fontSize: 12)),
  ];

  var indicatorColors = <Color>[
    Color.fromRGBO(255, 0, 0, 1),
    Color.fromRGBO(255, 0, 0, 1),
    Color.fromRGBO(255, 0, 0, 1),
    Color.fromRGBO(255, 0, 0, 1),
    Color.fromRGBO(255, 0, 0, 1),
  ];

//  List<Widget> get badgeWidgets => indexed(badges)
//      .map((Indexed indexed) => indexed.value != null
//      ? Text(indexed.value.toString(),
//      style: TextStyle(
//        color: indexed.index == activeIndex
//            ? indicatorColors[indexed.index]
//            : Colors.white,
//      ))
//      : null)
//      .toList();

  @override
  void initState() {
    logoColor = Colors.red[600];
    activeIndex = 2;
    super.initState();
  }

  void incrementIndex() {
    setState(() {
      activeIndex = activeIndex < (iconData.length - 1) ? activeIndex + 1 : 0;
      print(activeIndex);
    });
  }

  // ignore: unused_element
  _onAnimate(AnimationUpdate update) {
    setState(() {
      logoColor = update.color;
    });
  }

  _onTap(int index) {
    setState(() {


      activeIndex = index;
      if(activeIndex == index){
        setState(() {

        });
      }
    });

  }

//  void _incrementBadge() {
//    badges[activeIndex] =
//        badges[activeIndex] == null ? 1 : badges[activeIndex] + 1;
//    setState(() {});
//  }

  List<Widget> get builderChildren => const <Widget>[
    Text('1', style: TextStyle(color: Colors.grey)),
    Text('2', style: TextStyle(color: Colors.grey)),
    Text('3', style: TextStyle(color: Colors.grey)),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue[100],
      ),
      home: Directionality(
        //textDirection: TextDirection.rtl,
        textDirection: TextDirection.ltr,
        child: Builder(
          builder: (BuildContext context) {
            double largeIconHeight = MediaQuery.of(context).size.width;
            double navBarHeight = scaledHeight(context, 80);
            double topOffset = (MediaQuery.of(context).size.height -
                largeIconHeight -
                MediaQuery.of(context).viewInsets.top -
                (navBarHeight * 2)) /
                2;
            return Scaffold(
//              floatingActionButton: FloatingActionButton(
//                backgroundColor: logoColor,
//                child: Icon(Icons.add),
//                onPressed: _incrementBadge,
//              ),

              body: _children[activeIndex],
              bottomNavigationBar: Stack(
                children: <Widget>[
                  Container(
                    // bottom: 0,
                    height: navBarHeight,
                    width: MediaQuery.of(context).size.width,
                    // Option 1: Recommended
                    child: RollingNavBar.iconData(
//                      activeBadgeColors: <Color>[
//                        Colors.white,
//                      ],
                      activeIndex: activeIndex,
                      animationCurve: Curves.linear,
                      animationType: AnimationType.roll,
                      baseAnimationSpeed: 200,
//                      badges: badgeWidgets,
                      iconData: iconData,
                      iconColors: <Color>[Colors.grey[800]],
                      iconText: iconText,
                      indicatorColors: indicatorColors,
                      iconSize: 25,
                      indicatorRadius: scaledHeight(context, 30),
                      onAnimate: _onAnimate,
                      onTap: _onTap,
                    ),

                    // Option 2: Possibly more complicated, but there if you need it
                    // child: RollingNavBar.builder(
                    //   builder: (
                    //     BuildContext context,
                    //     int index,
                    //     AnimationInfo info,
                    //     AnimationUpdate update,
                    //   ) {
                    //     return builderChildren[index];
                    //   },
                    //   badges: badgeWidgets.sublist(0, builderChildren.length),
                    //   indicatorColors:
                    //       indicatorColors.sublist(0, builderChildren.length),
                    //   numChildren: builderChildren.length,
                    //   onTap: _onTap,
                    // ),
                  ),
                ],

              ),
            );
          },
        ),
      ),
    );
  }
}
