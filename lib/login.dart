import 'dart:ui';

import 'package:flutter/material.dart';

class login extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        flexibleSpace: Center(
          child: Text('Login Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: TextField(
                decoration: InputDecoration(
              labelText: "Username:",
              border: OutlineInputBorder(),
            ))),
        SizedBox(height: 20.0),
        Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: TextField(
                decoration: InputDecoration(
              labelText: "Password:",
              border: OutlineInputBorder(),
            ))),
        Container(
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width * 0.4,
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot your password?",
                style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.4,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                minimumSize: Size(200, 60),
                backgroundColor: Color(0XFF2661FA), // Background color
                foregroundColor: Colors.white, // Text color
              ),
              child: Text('Login'),
            ))
      ])),
    ));
  }
}
