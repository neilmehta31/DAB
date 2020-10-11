import 'package:flutter/material.dart';
import 'dart:async';
import './GPA.dart';

class GPA extends StatefulWidget {
  @override
  GPAState createState() => new GPAState();
}

class GPAState extends State<GPA> {
  TextEditingController controller = new TextEditingController();
  int n;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15.0),
              Text(
                '"GPA Calculator"',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0,
                ),
              ),
              SizedBox(height: 12.0),
              Row(children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                    )),
                Expanded(
                  flex: 6,
                  child: new TextField(
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                        hintText: "How many subjects did you have ",
                        hintStyle: new TextStyle(color: Colors.black54)),
                    keyboardType: TextInputType.number,
                    controller: controller,
                    onChanged: (String str) {
                      setState(() {
                        if (controller.text == "") n = 0;
                        n = int.parse(controller.text);
                      });
                    },
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                    )),
              ]),
              new IconButton(
                icon: new Icon(Icons.arrow_forward),
                onPressed: () {
                  if (n is int && n > 0) {
                    int pass = n;
                    n = 0;
                    controller.text = "";
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new GPAcalc(pass)));
                  } else {
                    controller.text = "";
                    alert();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> alert() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Rewind and regret!'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('You think you are smart?.'),
                new Text('Guess what... you are not!'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
