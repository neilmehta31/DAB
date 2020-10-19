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
          backgroundColor: Colors.lightGreen[800],
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 25.0, left: 8.0, right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/bits.jpeg",
                    height: 200,
                    width: 450,
                  ),
                  SizedBox(height: 8.0),
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

                  ],
                ),
                // Image.asset("images/snow.png",height: 150,),
                Padding(
                  padding: EdgeInsets.only(top:10, bottom: 25.0),
                  child: Text(
                    'All information provided is for general use only and is subject to change.',

                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Your number one source for all BITS Hyderabad Anoucements. We’re dedicated to providing you, up to Date updates about everything that’s happening in our campus. The app is under development,\n\n New updates coming soon!',

                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  'All information provided is for general use only and is subject to change.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
