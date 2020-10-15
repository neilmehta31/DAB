// import 'dart:html';
import 'package:daysatbits/home.dart';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class shimmerUI extends StatefulWidget {
  @override
  _shimmerUIState createState() => _shimmerUIState();
}

class _shimmerUIState extends State<shimmerUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Shimmer.fromColors(
          period: Duration(milliseconds: 800),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: [new BoxShadow(color: Colors.white)],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                    child: new ListTile(
                      leading: CircleAvatar(),
                      title: new Container(height: 15,width: 50),
                      subtitle: Container(height: 10,width: 25,)
                    ),
                  ),
                ),
              );
            },
          ),
          baseColor: Colors.grey[400],
          highlightColor: Color(0xFFD5D5D5)),
    );
  }
}
