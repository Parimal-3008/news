import 'package:flutter/material.dart';
import 'package:news/profile.dart';

import 'Home.dart';
import 'Video.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

Color c1 = Colors.black;
Color c2 = Colors.white;
String selected;

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('News in detail'),
        backgroundColor: Colors.teal[900],
      ),
      drawer: Drawer(
          child: ListView(children: [
        Container(
          height: 150,
          decoration: BoxDecoration(color: Colors.teal[900]),
        ),
        Divider(
          thickness: 1,
        ),
        GestureDetector(
            child: ListTile(
              title: Text(
                'Home',
              ),
            ),
            onTap: () {
              setState(() {
                selected = "Home";
              });
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) => Home()));
            }),
        Divider(
          thickness: 1,
          color: c2,
        ),
        GestureDetector(
          child: ListTile(
            title: Text(
              'Profile',
            ),
          ),
          onTap: () {
            setState(() {
              selected = "Profile";
            });
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Profile()));
          },
        ),
        Divider(
          thickness: 1,
          color: c2,
        ),
        GestureDetector(
          child: ListTile(
            title: Text(
              'Video',
            ),
          ),
          onTap: () {
            setState(() {
              selected = "Video";
            });
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => Video()));
          },
        ),
        Divider(
          thickness: 1,
          color: c1,
        ),
      ])),
    );
  }
}
