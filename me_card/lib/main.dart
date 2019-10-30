import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/guy.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Subhendu Maji',
                style: TextStyle(
                    fontFamily: 'JotiOne',
                    fontSize: 45,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'UnicaOne',
                    fontSize: 25,
                    // fontWeight: FontWeight.bold,s
                    letterSpacing: 0.5,
                    color: Colors.teal[100]),
              ),
              SizedBox(
                  height: 20,
                  width: 160,
                  child: Divider(
                    color: Colors.teal[50],
                  )),
              Card(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 2),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 9999948008',
                      style: TextStyle(
                          fontSize: 22, letterSpacing: 1.5, color: Colors.teal),
                    ),
                  )),
              Card(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 2),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'subhendu17620@gmail.com',
                      style: TextStyle(fontSize: 22, color: Colors.teal),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
