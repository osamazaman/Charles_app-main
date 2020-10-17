import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:charles_app/View/splash.dart';
import 'package:flutter/material.dart';
import 'View/IntroPages/introPages.dart';

void main()  {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splash()
    );
  }
}

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<User>(
//         stream: FirebaseAuth.instance.authStateChanges(),
//         builder: (context, snapshot) {
//           if(snapshot.hasData && snapshot.data != null) {
//             return HomePage();
//           }
//           return LoginPage();
//         }
//     );
//   }
// }