import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CGPA extends StatefulWidget {
  @override
  _CGPAState createState() => _CGPAState();
}

class _CGPAState extends State<CGPA> {
  final TextEditingController g1 = TextEditingController();
  final TextEditingController g2 = TextEditingController();
  final TextEditingController g3 = TextEditingController();
  final TextEditingController g4 = TextEditingController();
  final TextEditingController g5 = TextEditingController();
  final TextEditingController g6 = TextEditingController();
  final TextEditingController g7 = TextEditingController();
  final TextEditingController g8 = TextEditingController();
  final TextEditingController c1 = TextEditingController();
  final TextEditingController c2 = TextEditingController();
  final TextEditingController c3 = TextEditingController();
  final TextEditingController c4 = TextEditingController();
  final TextEditingController c5 = TextEditingController();
  final TextEditingController c6 = TextEditingController();
  final TextEditingController c7 = TextEditingController();
  final TextEditingController c8 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: new Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "CGPA Calculator",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, //                   <--- border color
                  width: 3.0,
                ),
              ),
              padding: EdgeInsets.only(right: 12.0, top: 8.0, bottom: 8.0),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "GPA",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "Credit's",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g1,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c1,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g2,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c2,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 3",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g3,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c3,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 4",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g4,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c4,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g5,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c5,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 6",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g6,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c6,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 7",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g7,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c7,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: Text(
                          "-> SEM 8",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: g8,
                          decoration: const InputDecoration(
                            hintText: 'GPA',
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                          child: Container(
                        color: Colors.white,
                      )),
                    ),
                    Expanded(
                      flex: 3,
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          controller: c8,
                          decoration: const InputDecoration(
                            hintText: 'Credit\'s',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            RaisedButton(
              onPressed: () {
                {
                  var f = new List<double>()..length = 8;
                  var r = new List<int>()..length = 8;

                  if (g1.text == '') {
                    f[0] = 0;
                  } else {
                    f[0] = double.tryParse(g1.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                    print(f[0]);
                  }
                  if (g2.text == '') {
                    f[1] = 0;
                  } else {
                    f[1] = double.tryParse(g2.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                    print(f[1]);
                  }
                  if (g3.text == '') {
                    f[2] = 0;
                  } else {
                    f[2] = double.tryParse(g3.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                  }
                  if (g4.text == '') {
                    f[3] = 0;
                  } else {
                    f[3] = double.tryParse(g4.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                  }
                  if (g5.text == '') {
                    f[4] = 0;
                  } else {
                    f[4] = double.tryParse(g5.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                  }
                  if (g6.text == '') {
                    f[5] = 0;
                  } else {
                    f[5] = double.tryParse(g6.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                  }
                  if (g7.text == '') {
                    f[6] = 0;
                  } else {
                    f[6] = double.tryParse(g7.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                  }
                  if (g8.text == '') {
                    f[7] = 0;
                  } else {
                    f[7] = double.tryParse(g8.text) ??
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Man!"),
                                content: Text("Check your GPA Input..."),
                                actions: <Widget>[
                                  new FlatButton(
                                    child: new Text('okay'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                  }

                  if (c1.text == '') {
                    r[0] = 0;
                  } else {
                    r[0] = int.parse(c1.text);
                  }
                  if (c2.text == '') {
                    r[1] = 0;
                  } else {
                    r[1] = int.parse(c2.text);
                  }
                  if (c3.text == '') {
                    r[2] = 0;
                  } else {
                    r[2] = int.parse(c3.text);
                  }
                  if (c4.text == '') {
                    r[3] = 0;
                  } else {
                    r[3] = int.parse(c4.text);
                  }
                  if (c5.text == '') {
                    r[4] = 0;
                  } else {
                    r[4] = int.parse(c5.text);
                  }
                  if (c6.text == '') {
                    r[5] = 0;
                  } else {
                    r[5] = int.parse(c6.text);
                  }
                  if (c7.text == '') {
                    r[6] = 0;
                  } else {
                    r[6] = int.parse(c7.text);
                  }
                  if (c8.text == '') {
                    r[7] = 0;
                  } else {
                    r[7] = int.parse(c8.text);
                  }

                  if (f[0] < 0 || f[0] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 1)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else if (f[1] < 0 || f[1] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 2)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else if (f[2] < 0 || f[2] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 3)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else if (f[3] < 0 || f[3] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 4)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else if (f[4] < 0 || f[4] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 5)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else if (f[5] < 0 || f[5] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 6)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else if (f[6] < 0 || f[6] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 7)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else if (f[7] < 0 || f[7] > 10) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh Man!!!"),
                            content: Text(
                                "How can GPA be less than 0 or greater than 10 (SEM 8)"),
                            actions: <Widget>[
                              new FlatButton(
                                child: new Text('Regret'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        });
                  } else {
                    double allnu = 0;
                    double allcr = 0;
                    var cgpa;
                    for (int i = 0; i < 8; i++) {
                      allnu = allnu + (f[i] * r[i]);
                      allcr = allcr + r[i];
                    }

                    cgpa = (allnu / allcr);

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Your CGPA is:'),
                            content: Text(cgpa.toStringAsFixed(2)),
                          );
                        });
                  }
                }
              },
              child: Text('Submit'),
              color: Colors.yellow,
            ),
            SizedBox(height: 10.0),
            Center(
              child:
                  Text('*Leave the Fields empty if not required to calculate',
                      style: TextStyle(
                        color: Colors.red,
                      )),
            ),
            Center(
              child: Text('*Avoid space in GPA field',
                  style: TextStyle(
                    color: Colors.red,
                  )),
            ),
            SizedBox(height: 15.0),
          ]),
        ),
      ),
    ));
  }
}
