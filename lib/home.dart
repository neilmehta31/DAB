import 'package:flutter/material.dart';
import 'package:daysatbits/UI/AboutusUI.dart';
// import 'package:daysatbits/UI/ToolsUI.dart';
// import 'package:daysatbits/UI/ContactusUI.dart';
// import 'package:daysatbits/UI/FacultyUI.dart';
import 'package:daysatbits/UI/clubsUI.dart';
import 'package:daysatbits/UI/homeUI.dart';

import 'UI/ContactusUI.dart';
import 'UI/clubsUI.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex = 1;

                              // Widget _body() {
                              //   return Stack(
                              //     children: List<Widget>.generate(3, (int index) {
                              //       return IgnorePointer(
                              //         ignoring: index != _currentIndex,
                              //         child: Opacity(
                              //           opacity: _currentIndex == index ? 1.0 : 0.0,
                              //           child: Navigator(
                              //             onGenerateRoute: (RouteSettings settings) {
                              //               return new MaterialPageRoute(
                              //                 builder: (_) => _page(index),
                              //                 settings: settings,
                              //               );
                              //             },
                              //           ),
                              //         ),
                              //       );
                              //     }),
                              //   );
                              // }

  Widget _page(int index) {
    switch (index) {
      // case 0:
      //   return Tools();
      case 0:
        return ClubsUI();
      case 1:
        return HomeUI();
      // case 2:
      //   return FacultyUI();
      case 2:
        return ContactUsUI();
    }

    throw "Invalid index $index";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: FloatingActionButton(
        disabledElevation: 2,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ContactUsUI()));
        },
        child: Icon(
          Icons.mail,
          size: 38,
        ),
      ),
      drawer: Drawer(
          elevation: 16.0,
          child: ListView(
            padding: EdgeInsets.only(top: 0),
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                onTap: () {
                  return Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ClubsUI()));
                },
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text("Clubs"),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                onTap: () {
                  return Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsUI()),
                  );
                },
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                ),
                title: Text("Reach us"),
              ),
              Divider(
                thickness: 2,
              ),
            ],
          )),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'For your days at BITS',
          style: TextStyle(
            color: Colors.white,
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
        backgroundColor: Colors.blue,
        elevation: 0.0,
        centerTitle: true,
      ),
      body: HomeUI(),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   items: [
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(
      //     //     Icons.apps,
      //     //     color: Colors.black,
      //     //   ),
      //     //   title: Text(
      //     //     'Tools',
      //     //     style: TextStyle(
      //     //       color: Colors.black,
      //     //     ),
      //     //   ),
      //     //   backgroundColor: Colors.red,
      //     // ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.palette,
      //         color: Colors.black,
      //       ),
      //       title: Text(
      //         'Clubs',
      //         style: TextStyle(
      //           color: Colors.black,
      //         ),
      //       ),
      //       backgroundColor: Colors.red,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Colors.black,
      //       ),
      //       title: Text(
      //         'Home',
      //         style: TextStyle(
      //           color: Colors.black,
      //         ),
      //       ),
      //       backgroundColor: Colors.red,
      //     ),
      //     // BottomNavigationBarItem(
      //     //   icon: Icon(
      //     //     Icons.person,
      //     //     color: Colors.black,
      //     //   ),
      //     //   title: Text(
      //     //     'Faculty',
      //     //     style: TextStyle(
      //     //       color: Colors.black,
      //     //     ),
      //     //   ),
      //     //   backgroundColor: Colors.red,
      //     // ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.phone,
      //         color: Colors.black,
      //       ),
      //       title: Text(
      //         'Reach Us',
      //         style: TextStyle(
      //           color: Colors.black,
      //         ),
      //       ),
      //       backgroundColor: Colors.red,
      //     ),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
    );
  }
}

class CustomListTitle extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;

  CustomListTitle(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.grey,
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Icon(icon),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
