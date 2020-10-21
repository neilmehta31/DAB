import 'package:daysatbits/UI/homeUI.dart';
import 'package:flutter/material.dart';
import 'package:daysatbits/home.dart';
import 'package:splashscreen/splashscreen.dart' ;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  _MyAppState createState() => new _MyAppState();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Days At BITS',
      home: HomePage(),
    );
  }
}
class _MyAppState extends State {
  @override void initState() {
    super.initState();
    new Future.delayed( const Duration(seconds: 30), () =>
        Navigator.pushReplacement( context,
          MaterialPageRoute(builder: (context) =>HomeUI()),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset("assets/splash_screen_gif.gif",
                gaplessPlayback: true,
                fit: BoxFit.fill
            )
        ));

//      SplashScreen(
//      seconds: 30,
//      backgroundColor: Colors.white,
//      image: Image.asset('images/splash_screen_gif.gif'),
//      loaderColor: Colors.white,
//      photoSize: 150.0,
//      navigateAfterSeconds: HomeUI(),
//    );
  }
}
      
      

