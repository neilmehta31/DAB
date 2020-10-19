import 'package:daysatbits/Widgets/shimmerUI.dart';
import 'package:flutter/material.dart';
import 'package:daysatbits/InnerPages/clubs.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'AboutusUI.dart';

class ClubsUI extends StatefulWidget {
  @override
  _ClubsUIState createState() => _ClubsUIState();
}

class _ClubsUIState extends State<ClubsUI> {
  final String apiUrl = "https://daysatbits.com/";
  List clubs;

  Future<String> getClubs() async {
    var res = await http.get(Uri.encodeFull(apiUrl + "clubs_json.html"),
        headers: {"Accept": "application/json"});

    // fill our posts list with results and update state
    setState(() {
      var resBody = json.decode(res.body);
      clubs = resBody;
    });
    return "Success!";
  }

  @override
  void initState() {
    super.initState();
    this.getClubs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'For your days at BITS',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300, // light
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUsUI()));
              })
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
          color: Color(0xFFF0F0F0),
          child: Column(children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  )),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    'Clubs & Departments',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Expanded(child: Builder(builder: (context) {
              if (clubs == null) {
                return Center(
                  child: shimmerUI(),
                );
              } else {
                return ListView.builder(
                  itemCount: clubs == null ? 0 : clubs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Club(
                                    clubs[index]["name"],
                                    clubs[index]["logo"],
                                    clubs[index]["type"],
                                    clubs[index]["info"],
                                    clubs[index]["phone"].toString(),
                                    clubs[index]["fb"],
                                    clubs[index]["insta"],
                                    clubs[index]["mail"],
                                    clubs[index]["website"],
                                    clubs[index]["youtube"],
                                    clubs[index]["linkedin"],
                                    clubs[index]["twitter"])));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.2),
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [new BoxShadow(color: Colors.white)]),
                          child: new ListTile(
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                              clubs[index]["logo"],
                            )),
                            title: new Text(clubs[index]["name"]),
                            subtitle: new Text(clubs[index]["type"]),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            }))
          ])),
    );
  }
}
