import 'package:flutter/material.dart';

class AboutUsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('About us'),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 0.0, left: 8.0, right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/bits.jpg",
                    height: 200,
                    width: 450,
                  ),
                  SizedBox(height: 5.0),
                  Text('Copyright © DaysAtBITS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 15.0),
                  Text(
                    'Welcome to DaysAtBITS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Your best source for all BITS Hyderabad Anoucements. We’re dedicated at providing you, up to date updates about everything that is happening in our campus. The app is under development.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Align(
                  child: Text.rich(
                    TextSpan(
                      text: "New updates coming soon!",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 22.0),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'All information provided is for general use only and is subject to change.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
