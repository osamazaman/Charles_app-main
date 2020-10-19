import 'package:flutter/material.dart';

class drop extends StatefulWidget {
  @override
  _dropState createState() => _dropState();
}
class Item {
  Item(this.number,this.imagee);
  final String number;
  var imagee;
}

class _dropState extends State<drop> {
  Item selectedUser;


  List<Item> users = <Item>[
    Item('+92',Image.asset('lib/assets/images/canada.png',width: 20,)),
    Item('+11',Image.asset('lib/assets/images/aus.png',width: 20,),),
    Item('+12', Image.asset('lib/assets/images/france.png',width: 20,),),
    Item('+56',Image.asset('lib/assets/images/flag.jpg',width: 20,),),
  ];
  // var imagee=Image.asset('assets/box.png',width: 30,);
  // int index=0;
  // void  iimage= [
  //
  //    Image.asset('assets/box.png',width: 30,),
  //    Image.asset('assets/loginlogo.png',width: 30,),
  //    Image.asset('assets/plane.jpg',width: 30,),
  //    Image.asset('assets/animated-logo.png',width: 30,),
  //
  //
  // ];

  String dropdownValue = '+92';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
            child:
            Center(
              child:  DropdownButtonHideUnderline(
                child: DropdownButton<Item>(

                  // hint: Text('List'),
                  value: selectedUser == null?users[0]:selectedUser,
                  onChanged: (Item Value) {
                    setState(() {
                      selectedUser = Value;
                    });
                  },
                  items: users.map((Item user) {
                    return  DropdownMenuItem<Item>(
                      value: user,
                      child: Row(
                        children: <Widget>[
                          user.imagee,
                          SizedBox(width: 10,),
                          Text(
                            user.number,
                            style:  TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),

            ))
    );
  }
}
