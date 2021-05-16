import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'package:news/profile.dart';
import 'package:news/showrelated.dart';

import 'Home.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

Color c1 = Colors.black;
Color c2 = Colors.white;
String selected;

class _VideoState extends State<Video> {
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
      body: ListView(
        children: [
          SizedBox(height: 10),
          Center(
              child: Text(
            'Videos',
            style: TextStyle(color: Colors.black, fontSize: 25),
          )),
          Divider(
            thickness: 10,
          ),
          AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer.network(
              "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
              betterPlayerConfiguration: BetterPlayerConfiguration(
                autoPlay: false,
                looping: false,
                fullScreenByDefault: false,
                aspectRatio: 10 / 9,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: SingleChildScrollView(
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14),
                  Text(
                    'This is heading of the related news this is another',
                    maxLines: 2,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Date and Time',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is heading of the related news this is another',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        boxShadow:[BoxShadow(color: Colors.grey[500],spreadRadius: 3,blurRadius: 9),],
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.grey[200]),
                    child: Center(child: Text('Information', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                  )
                 , SizedBox(height: 30),
                  ShowRelated('assets/i7.jpg', "This is heading of related news and can be extended",  '03-03-2021', 'Info'),
                  SizedBox(height: 30),
                  ShowRelated('assets/i8.jpg', "This is heading of related news and can be extended",  '03-03-2021', 'Info'),
                  SizedBox(height: 30),
                  ShowRelated('assets/i9.jpg', "This is heading of related news and can be extended",  '03-03-2021', 'Info'),
                  SizedBox(height: 30),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
