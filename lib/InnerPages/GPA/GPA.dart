import 'package:flutter/material.dart';
import 'dart:async';

class GPAcalc extends StatefulWidget {
  final int n;

  GPAcalc(this.n);

  @override
  GPAcalcstate createState() => new GPAcalcstate();
}

class GPAcalcstate extends State<GPAcalc> {
  List<String> _items = ['S', 'A', 'B', 'C', 'D', 'E', 'F', 'N'].toList();
  List<String> _itemsCp = ['1', '2', '3', '4', '5', '20'].toList();
  var _selection;
  var _selectionCp;
  var list;

  @override
  void initState() {
    super.initState();
    _selection = new List<String>()..length = widget.n;
    _selectionCp = new List<String>()..length = widget.n;
    list = new List<int>.generate(widget.n, (i) => i);
  }

  @override
  Widget build(BuildContext context) {
    int allnu = 0, allcr = 0;
    var textFields = <Widget>[];
    bool safeToNavigate = true;
    textFields.add(
      new Row(children: [
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
            )),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
            )),
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              "Grade",
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              "Credits",
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
        ),
      ]),
    );
    list.forEach((i) {
      textFields.add(
        new Column(
          children: [
            new Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                        child: Container(
                      color: Colors.white,
                      child: Text("->",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    )),
                  ),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: new Text(
                        "Subject ${i + 1}:",
                        style: new TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: new DropdownButton<String>(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        hint: new Text(
                          "Grade",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                          ),
                        ),
                        value: _selection[i],
                        items: _items.map((String item) {
                          return new DropdownMenuItem<String>(
                            value: item,
                            child: Center(
                              child: new Text(
                                item,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (s) {
                          setState(() {
                            _selection[i] = s;
                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Center(
                      child: new DropdownButton<String>(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        hint: new Text(
                          "Credit's",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.normal),
                        ),
                        value: _selectionCp[i],
                        items: _itemsCp.map((String items) {
                          return new DropdownMenuItem<String>(
                            value: items,
                            child: Center(
                              child: new Text(
                                items,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (s) {
                          setState(() {
                            _selectionCp[i] = s;
                          });
                        },
                      ),
                    ),
                  ),
                ]),
          ],
        ),
      );
    });

    double res = 0.0;

    return new Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'GPA Calculator',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(height: 10.0),
          Expanded(
            child: new Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, //                   <--- border color
                  width: 3.0,
                ),
              ),
              child: new ListView(
                children: textFields,
              ),
            ),
          ),
          SizedBox(height: 15.0),
        ]),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Calculate',
        backgroundColor: Colors.orange,
        child: new Icon(Icons.gavel),
        onPressed: () {
          for (int i = 0; i < widget.n; i++) {
            if (_selectionCp[i] == null) {
              safeToNavigate = false;
              continue;
            }
            if (_selection[i] == null) {
              safeToNavigate = false;
              continue;
            }
            int r = int.parse(_selectionCp[i]);
            int gp = calculate(_selection[i]);
            int cp = r;
            int gxc = gp * cp;
            allnu += gxc; // allnu= sum of product of gradepoint and credits.
            allcr += cp; //allcr= sum of credits.
          }
          res = allnu / allcr;
          if (safeToNavigate)
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Your GPA is: '),
                    content: Text(res.toStringAsFixed(2)),
                  );
                });
          else {
            alert();
          }
        },
      ),
    );
  }

  int calculate(var a) {
    if (a == "S") return 10;
    if (a == "A") return 9;
    if (a == "B") return 8;
    if (a == "C") return 7;
    if (a == "D") return 6;
    if (a == "E") return 5;
    if (a == "F") return 0;
    if (a == "N") return 0;
    return 0;
  }

  Future<Null> alert() async {
    return showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return new AlertDialog(
          title: new Text('Rewind and remember'),
          content: new SingleChildScrollView(
            child: new ListBody(
              children: <Widget>[
                new Text('You have done something terrible.'),
                new Text('Go back and reflect on your mistakes.'),
              ],
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text('give me one more chance'),
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
