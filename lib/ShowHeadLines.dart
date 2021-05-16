import 'package:flutter/material.dart';
import 'package:news/Detail.dart';

import 'icons.dart';

class ShowHeadLines extends StatelessWidget {
  String img;
  String title;
  String subtitle;
  String date;
  String tag;
  bool bookmark_to;
  ShowHeadLines(String img, String title, String subtitle, String date,String tag,bool bookmark_to) {
    this.img = img;
    this.title = title;
    this.subtitle = subtitle;
    this.date = date;
    this.tag=tag;
    this.bookmark_to= bookmark_to;
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Detail()));

      },
      child: SingleChildScrollView(
              child: Row(
          children: [
            Container(
              width: 100,
              height: 112,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(img),
                ),
              ),
            ),
            SizedBox(width: 20),
            Container(
              height: 100,
              width: 240,
              // decoration: BoxDecoration(color: Colors.grey),
              child: SingleChildScrollView(
                              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    SingleChildScrollView(
                                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(MyFlutterApp.calendar),
                              Text(
                                date,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Container(
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.orange[900],
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                                child: Text(
                              tag,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Colors.white),
                            )),
                          ),
                        bookmark_to ? Icon(Icons.bookmark_border_sharp):Container(height:0,width:0)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
