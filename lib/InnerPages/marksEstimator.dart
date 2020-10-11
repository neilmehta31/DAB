import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MarksEstimator extends StatefulWidget {
  @override
  _MarksEstimatorState createState() => _MarksEstimatorState();
}

class _MarksEstimatorState extends State<MarksEstimator> {
  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();
  final TextEditingController t3 = TextEditingController();
  final TextEditingController t4 = TextEditingController();
  final TextEditingController t5 = TextEditingController();
  final TextEditingController t6 = TextEditingController();

  List<String> _itemsCp = ['1', '2', '3', '4', '5', '20'].toList();
  var _selectionCp;
  var list;

  @override
  void initState() {
    super.initState();
    _selectionCp = new List<String>()..length = 1;
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
        elevation: 0.0,
        title: Text(
          "Mark\'s Estimator",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
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
              padding: EdgeInsets.only(top: 12.0, bottom: 8.0),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "Marks",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "Max",
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
                      flex: 4,
                      child: Center(
                        child: Text(
                          "CAT 1",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: TextField(
                          controller: t1,
                          decoration: const InputDecoration(
                            hintText: 'Enter your marks',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "50",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "CAT 2",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: TextField(
                          controller: t2,
                          decoration: const InputDecoration(
                            hintText: 'Enter your marks',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "50",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "Internals (DA\'s)",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: TextField(
                          controller: t3,
                          decoration: const InputDecoration(
                            hintText: 'Enter your marks',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "30",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "LAB",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: TextField(
                          controller: t4,
                          decoration: const InputDecoration(
                            hintText: 'Enter your marks',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "100",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "J component",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: TextField(
                          controller: t5,
                          decoration: const InputDecoration(
                            hintText: 'Enter your marks',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "100",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "FAT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: TextField(
                          controller: t6,
                          decoration: const InputDecoration(
                            hintText: 'Enter your marks',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            WhitelistingTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "100",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: Text(
                          "Course Credits",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Center(
                        child: new DropdownButton<String>(
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          hint: new Text(
                            "   credit\'s   ",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.normal),
                          ),
                          value: _selectionCp[0],
                          items: _itemsCp.map((String items) {
                            return new DropdownMenuItem<String>(
                              value: items,
                              child: new Text(
                                items,
                                textAlign: TextAlign.center,
                              ),
                            );
                          }).toList(),
                          onChanged: (s) {
                            setState(() {
                              _selectionCp[0] = s;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            RaisedButton(
              onPressed: () {
                {
                  var f1, f2, f3, f4, f5, f6;

                  if (t1.text == '') {
                    f1 = 0;
                  } else {
                    f1 = int.parse(t1.text);
                  }
                  if (t2.text == '') {
                    f2 = 0;
                  } else {
                    f2 = int.parse(t2.text);
                  }
                  if (t3.text == '') {
                    f3 = 0;
                  } else {
                    f3 = int.parse(t3.text);
                  }
                  if (t4.text == '') {
                    f4 = 0;
                  } else {
                    f4 = int.parse(t4.text);
                  }
                  if (t5.text == '') {
                    f5 = 0;
                  } else {
                    f5 = int.parse(t5.text);
                  }
                  if (t6.text == '') {
                    f6 = 0;
                  } else {
                    f6 = int.parse(t6.text);
                  }

                  if (f1 < 0 || f1 > 50) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Fool! i have already mentioned..."),
                            content:
                                Text("CAT 1 marks should be between 0 and 50"),
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
                  } else if (f2 < 0 || f2 > 50) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Fool! i have already mentioned..."),
                            content:
                                Text("CAT 2 marks should be between 0 and 50"),
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
                  } else if (f3 < 0 || f3 > 30) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Fool! i have already mentioned..."),
                            content:
                                Text("DA's marks should be between 0 and 30"),
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
                  } else if (f4 < 0 || f4 > 100) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Fool! i have already mentioned..."),
                            content:
                                Text("LAB marks should be between 0 and 100"),
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
                  } else if (f5 < 0 || f5 > 100) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Fool! i have already mentioned..."),
                            content: Text(
                                "J Component marks should be between 0 and 100"),
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
                  } else if (f6 < 0 || f6 > 100) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Fool! i have already mentioned..."),
                            content:
                                Text("FAT marks should be between 0 and 100"),
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
                  } else if (_selectionCp[0] == null) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("oh! Man"),
                            content: Text("Please choose number of credit's"),
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
                    int f7 = int.parse(_selectionCp[0]);
                    var nz = 0;
                    if (f4 == 0) {
                      nz = nz + 1;
                    }
                    if (f5 == 0) {
                      nz = nz + 1;
                    }
                    var ncr = f7 - 2 + nz;
                    var cat1 = (f1 / 50) * 15;
                    var cat2 = (f2 / 50) * 15;
                    var da = f3 * 1;
                    var fat = (f6 / 100) * 40;
                    var thy = cat1 + cat2 + da + fat;
                    var jc = f5;
                    var lc = f4;
                    var totalmarks =
                        ((ncr / f7) * (thy) + (1 / f7) * jc + (1 / f7) * lc)
                            .toStringAsFixed(2);
                    print('Your Estimated Mark\'s:');
                    print(totalmarks);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Your Estimated Mark\'s:'),
                            content: Text(totalmarks.toString()),
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
              child: Text(
                  '*Leave LAB and Internal\'s feild empty if you dont have those component\'s respectively.',
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
