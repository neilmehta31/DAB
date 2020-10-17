import 'package:flutter/material.dart';

class AboutUsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "images/logo_daysatbits.jpeg",
            height: 45,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.blue,
          elevation: 0.0,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 25.0, left: 8.0, right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "images/logo_daysatbits.jpeg",
                      height: 120,
                      width: 120,
                    ),
                    SizedBox(height: 8.0),
                    Text('Copyright © daysatBITS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(height: 15.0),
                    Text(
                      'Welcome to  daysatBITS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'Your go to source for all BITS Pilani, Hyderabad Campus news. We will be providing you with all the updates of anything and everything going around in the campus.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                // Image.asset("images/snow.png",height: 150,),
                Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
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
          ),
        ));
  }
}
