import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 15),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'LITE!! Nothing new',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
      ]),
    );
  }
}

