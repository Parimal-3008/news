import 'package:flutter/material.dart';
import 'package:news/Detail.dart';

import 'icons.dart';

class ShowRelated extends StatelessWidget {
  String img;
  String title;
  
  String date;
  String tag;
  
  ShowRelated(String img, String title,  String date,String tag,) {
    this.img = img;
    this.title = title;
    
    this.date = date;
    this.tag=tag;
    
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
              width: 150,
              height: 80,
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
              height: 80,
              width: 200,
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
