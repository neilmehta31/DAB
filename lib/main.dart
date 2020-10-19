import 'package:flutter/material.dart';
import 'package:daysatbits/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Days At BITS',
      home: HomePage(),
    );
  }
}
