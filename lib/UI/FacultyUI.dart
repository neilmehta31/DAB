import 'package:flutter/material.dart';

class FacultyUI  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:
    Center(
      child:
      Column
      
      (
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[
          Image.asset("images/babyClip.png"),
          SizedBox(height:10.0),
          Text('Faculty Information will be updated soon.',style: TextStyle(
                fontSize: 16.0,),),

        ],
      )
    ),);}}