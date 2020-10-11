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
          color: Colors.black,
        ),
        title: Text(
          'For your days at BITS',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.info,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUsUI()));
              })
        ],
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
          color: Colors.white,
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Clubs & Chapter\'s',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Expanded(child: Builder(builder: (context) {
              if (clubs == null) {
                return Center(
                  child: CircularProgressIndicator(),
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
                      child: Card(
                        child: Padding(
                          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
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
