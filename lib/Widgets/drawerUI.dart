import 'package:daysatbits/UI/Calendar.dart';
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
                image: AssetImage('images/head.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              return Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ClubsUI()));
            },
            leading: Icon(
              Icons.sports_handball,
              color: Colors.purple,
            ),
            title: Text("Clubs and Departments"),
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
              color: Colors.green,
            ),
            title: Text("Map"),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            onTap: () {
              return Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Calendar()));
            },
            leading: Icon(
              Icons.date_range,
              color: Colors.blue,
            ),
            title: Text("Calendar"),
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
              color: Colors.orange,
            ),
            title: Text("Contact us"),
            hoverColor: Colors.blue[100],
          ),
          Divider(
            thickness: 1,
          ),
        ]));
  }
}
