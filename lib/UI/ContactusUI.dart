import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

import 'AboutusUI.dart';

class ContactUsUI extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  _sendEmail() async {
    final String _email = 'mailto:' +
        'contact@vitdayz.com' +
        '?subject=' +
        _subjectController.text +
        '&body=' +
        'Name:' +
        _nameController.text +
        ';  ' +
        'Email:' +
        _emailController.text +
        ';  ' +
        'Phone number:' +
        _phoneController.text +
        ';  ' +
        _bodyController.text;
    try {
      await launch(_email);
    } catch (e) {
      throw 'Could not mail';
    }
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                'Reach Us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: new ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                children: <Widget>[
                  new TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                  ),
                  new TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter your phone number',
                      labelText: 'Phone',
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  new TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'Enter your email address',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  new TextFormField(
                    controller: _subjectController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.subject),
                      labelText: 'Subject',
                    ),
                  ),
                  new TextFormField(
                    maxLines: 2,
                    controller: _bodyController,
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.message),
                      labelText: 'Body',
                    ),
                  ),
                  RaisedButton(
                    child: Text('Send Email'),
                    color: Colors.yellow,
                    onPressed: _sendEmail,
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(bottom: 8.0),
            //   child: Image.asset(
            //     'images/baby.png',
            //     height: 100,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
