import 'package:flutter/material.dart';
import 'package:news/profile.dart';

import 'ShowHeadLines.dart';
import 'Video.dart';

Color c1 = Colors.black;
Color c2 = Colors.white;
String selected;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
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
          },
        ),
        Divider(
          thickness: 1,
          color: c1,
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
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => Video()));
          },
        ),
        Divider(
          thickness: 1,
          color: c2,
        ),
      ])),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
        child: SingleChildScrollView(
          
          child: Column(
          children: [
            ShowHeadLines(
                'assets/news.jpg',
                'This is news headline and it can extend till 2lines',
                'This is subtitle or brief description abt the news',
                '03-03-2021','World',true),
            SizedBox(height: 30),
            ShowHeadLines(
                'assets/i1.jpg',
                'This is news title or news headline ',
                'This is subtitle of news or brief description of news',
                '03-03-2021','Covid',true),
            SizedBox(height: 30),
            ShowHeadLines(
                'assets/i2.jpg',
                'This is news title or news headline it can extend till 2 lines ',
                'This is subtitle of news or bried description of news and can extend till  2lines',
                '03-03-2021','Nation',true),
            SizedBox(height: 30),
            ShowHeadLines(
                'assets/i3.jpg',
                'This is news title or news headline it can extend upto 2 lines only',
                'This is subtitle of news or bried description of news',
                '03-03-2021','Navy',true),
            SizedBox(height: 30),
            ShowHeadLines(
                'assets/i4.jpg',
                'This is news title or news headline it can extend upto 2 lines only',
                'This is subtitle of news or brief description of news',
                '03-03-2021','Sports',true),
          ],
          )
        ),
      ),
    );
  }
}

