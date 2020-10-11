import 'package:flutter/material.dart';
import 'package:daysatbits/InnerPages/CGPA.dart';
import 'package:daysatbits/InnerPages/GPA/GPA_main.dart';
import 'package:daysatbits/InnerPages/marksEstimator.dart';
// import 'dart:io';

class Tools extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MarksEstimator()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "1. Marks Estimator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => GPA()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "2. GPA calculator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => CGPA()));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "3. CGPA Calculator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              new GestureDetector(
                onTap: () {
                  Navigator.push(
                    //  context, MaterialPageRoute(builder: (context) => exit(0)));
                    context,MaterialPageRoute(builder: (context) => Tools()));
                    //  context, onPressed: ()=> exit(0)));
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "4. Agla sem phodenge",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
