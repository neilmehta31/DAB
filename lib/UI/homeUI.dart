import 'package:flutter/material.dart';
import 'package:daysatbits/Widgets/widgets.dart';
import 'package:daysatbits/InnerPages/announcement.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:date_format/date_format.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  final String apiUrl = "https://vitdayz.com/wp-json/wp/v2/";
  final scrollController = new ScrollController();
  List posts;
  List pos = [];
  int page = 0;
  var response;

  Future<String> getPosts() async {
    page = page + 1;
    String p = page.toString();
    var res = await http.get(
        Uri.encodeFull(apiUrl + "posts/?_embed&categories=14&page=" + p),
        headers: {"Accept": "application/json"});
    var resBody = json.decode(res.body);
    response = res.statusCode;
    pos.addAll(resBody);
    setState(() {
      posts = pos;
    });
    return "Success!";
  }

  Future<String> refresh() {
    setState(() {
      page = 0;
      pos = [];
    });
    return getPosts();
  }

  @override
  void initState() {
    super.initState();
    getPosts();
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        getPosts();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          WelcomeMessage(),
          SizedBox(height: 5.0),
          Expanded(
            child: Builder(builder: (context) {
              if (posts == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return RefreshIndicator(
                  onRefresh: refresh,
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: posts == null ? 0 : posts.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index == posts.length - 1) {
                        return Padding(
                            padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                            child: Center(child: CupertinoActivityIndicator()));
                      }

                      DateTime date = DateTime.parse(posts[index]['date']
                        ..replaceAll(new RegExp(r'T'), ''));
                      formatDate(date, [
                        yyyy,
                        '/',
                        mm,
                        '/',
                        dd,
                        ' ',
                        hh,
                        ':',
                        nn,
                        ':',
                        ss,
                        ' ',
                        am
                      ]);
                      var content = posts[index]['content']['rendered'];
                      var featureimg = posts[index]["_embedded"]
                          ["wp:featuredmedia"][0]["source_url"];
                      var title = posts[index]["title"]["rendered"]
                          .replaceAll(new RegExp(r'(&)(.*)(;)'), '\'');
                      return new GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Announcement(
                                      content, featureimg, date, title)));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Card(
                            child: Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: new ListTile(
                                leading: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                  featureimg,
                                )),
                                title: new Text(title),
                                subtitle: Text(timeAgo(date)),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }),
          )
        ],
      ),
    );
  }
}

String timeAgo(DateTime d) {
  Duration diff = DateTime.now().difference(d);
  if (diff.inDays > 365)
    return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
  if (diff.inDays > 30)
    return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
  if (diff.inDays > 7)
    return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
  if (diff.inDays > 0)
    return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
  if (diff.inHours > 0)
    return "${diff.inHours} ${diff.inHours == 1 ? "hour" : "hours"} ago";
  if (diff.inMinutes > 0)
    return "${diff.inMinutes} ${diff.inMinutes == 1 ? "minute" : "minutes"} ago";
  return "just now";
}

void convertDateFromString(String strDate) {
  DateTime todayDate = DateTime.parse(strDate);
  print(todayDate);
  print(formatDate(
      todayDate, [yyyy, '/', mm, '/', dd, ' ', hh, ':', nn, ':', ss, ' ', am]));
}
