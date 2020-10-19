import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Club extends StatefulWidget {
  final String name;
  final String logo;
  final String type;
  final String info;
  final String phone;
  final String fb;
  final String insta;
  final String mail;
  final String website;
  final String youtube;
  final String linkedin;
  final String twitter;
  Club(
      this.name,
      this.logo,
      this.type,
      this.info,
      this.phone,
      this.fb,
      this.insta,
      this.mail,
      this.website,
      this.youtube,
      this.linkedin,
      this.twitter);
  @override
  _ClubState createState() => _ClubState(name, logo, type, info, phone, fb,
      insta, mail, website, youtube, linkedin, twitter);
}

class _ClubState extends State<Club> {
  final String name;
  final String logo;
  final String type;
  final String info;
  final String phone;
  final String fb;
  final String insta;
  final String mail;
  final String website;
  final String youtube;
  final String linkedin;
  final String twitter;

  _ClubState(
      this.name,
      this.logo,
      this.type,
      this.info,
      this.phone,
      this.fb,
      this.insta,
      this.mail,
      this.website,
      this.youtube,
      this.linkedin,
      this.twitter);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final String _email = 'mailto:' + mail;
    final String _call = 'tel:' + phone;
    return new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            type,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(
                    top: 12.0, bottom: 10.0, left: 10.0, right: 10.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: new Container(
                        width: 125.0,
                        height: 125.0,
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(logo),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Center(
                      child: Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        type,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Info: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Center(
                      child: Text(info),
                    ),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.phone),
                            onPressed: () {
                              if (phone != "") {
                                launch(_call);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Phone Number"),
                                        content: Text("not avaliable"),
                                      );
                                    });
                              }
                            }),
                        IconButton(
                            icon: Icon(Icons.email),
                            onPressed: () {
                              if (mail != "") {
                                launch(_email);
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Email ID"),
                                        content: Text("not avaliable"),
                                      );
                                    });
                              }
                            }),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Social Profiles:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    GestureDetector(
                      onTap: () {
                        launch(fb);
                      },
                      child: Text(fb),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        launch(insta);
                      },
                      child: Text(insta),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        launch(youtube);
                      },
                      child: Text(youtube),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        launch(website);
                      },
                      child: Text(website),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        launch(linkedin);
                      },
                      child: Text(linkedin),
                    ),
                    SizedBox(height: 5.0),
                    GestureDetector(
                      onTap: () {
                        launch(twitter);
                      },
                      child: Text(twitter),
                    ),
                    SizedBox(height: 15.0),
                  ],
                ))));
  }
}
