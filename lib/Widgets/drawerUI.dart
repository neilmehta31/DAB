import 'package:daysatbits/UI/ContactusUI.dart';
import 'package:daysatbits/UI/clubsUI.dart';
import 'package:flutter/material.dart';
import 'package:daysatbits/UI/mapUI.dart';

class DrawerUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
            elevation: 16.0,
            child: ListView(padding: EdgeInsets.only(top: 0), children: <Widget>[
              DrawerHeader(
                child: Container(
                  child: Text.rich(
                      TextSpan(
                          text: "BITS Pilani\nHyderabad Campus",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  alignment: Alignment.bottomLeft,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/head.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  return Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClubsUI()));
                },
                leading: Icon(
                  Icons.sports_handball,
                  color: Colors.blue,
                ),
                title: Text("Clubs and Departments"),
                //selected: true,
                //enabled: true,
                focusColor: Colors.deepOrange,
                hoverColor: Colors.blue[100],
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                onTap: () {
                  return Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MapUI()));
                },
                leading: Icon(
                  Icons.map,
                  color: Colors.blue,
                ),
                title: Text("Map"),
              ),
              Divider(
                thickness: 1,
              ),
              ListTile(
                onTap: () {
                  return Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsUI()),
                  );
                },
                leading: Icon(
                  Icons.mail,
                  color: Colors.blue[600],
                ),
                title: Text("Contact us"),

                //selected: true,
                hoverColor: Colors.blue[100],
              ),
              Divider(
                thickness: 1,
              ),
              Align(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text.rich(
                      TextSpan(
                        text: '\n Updates rolling soon...',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14.0),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ]));
  }
}