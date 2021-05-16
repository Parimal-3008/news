import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';
import 'Video.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

Color c1 = Colors.black;
Color c2 = Colors.white;
String selected;
String location=read1();
String dob=read2();
String pincode=read3();
String whatsapp=read4();
String email=read5();
 read1()async{
  final prefs = await SharedPreferences.getInstance();

  String s= prefs.getString('Location');
  return s;
}
read2()async{
  final prefs = await SharedPreferences.getInstance();

  String s= prefs.getString('DOB');
  return s;
}

read3()async{
  final prefs = await SharedPreferences.getInstance();

  String s= prefs.getString('Pincode');
  return s;
}


read4()async{
  final prefs = await SharedPreferences.getInstance();

  String s= prefs.getString('Whatsapp');
  return s;
}

read5()async{
  final prefs = await SharedPreferences.getInstance();

  String s= prefs.getString('Email');
  return s;
}
bool asd = false;
String gen = 'Male';

class _ProfileState extends State<Profile> {
  _read() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      location = prefs.getString('Location') ;
       whatsapp = prefs.getString('Whatsapp') ;
        email = prefs.getString('Email') ;
         pincode = prefs.getString('Pincode') ;
          dob = prefs.getString('DOB') ;
          print(pincode);

    });
     
    
  }

  _save(String a,String b,String c,String d,String e) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('Location', a);
    prefs.setString('Pincode', b);
    prefs.setString('Whatsapp', c);
    prefs.setString('DOB', d);
    prefs.setString('Email', e);
   
  }
  @override
  void initState() {
    // TODO: implement initState
    _read();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal[900], actions: <Widget>[
       asd? IconButton(
          icon: Icon(
            Icons.done,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              asd = false;
              _save(location,pincode,whatsapp,dob,email);
            });
          },
        ):Container(height: 0,)
      ]),
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
          color: c1,
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
          color: c2,
        ),
      ])),
      body: ListView(children: [
        Container(
          height: 175,
          decoration: BoxDecoration(color: Colors.grey[0300]),
          child: Center(
            child: SingleChildScrollView(
                          child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 33,
                      backgroundColor: Colors.orange,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(gen.startsWith("fe")||gen.startsWith("Fe")
                            ? 'assets/woman.jpg'
                            : 'assets/man.jpg'),
                        radius: 32,
                      ),
                    ),
                    Text(
                      'Dinesh Yaduvanshi',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ! asd ?Container(
                        height: 20,
                        width: 125,

                        decoration: BoxDecoration(color: Colors.white),
                        child: FlatButton(
                            onPressed: () {
                              setState(() {
                                asd = true;
                              });
                            },
                            child: Text('Edit Profile',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400)))):Container()
                  ]),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          height: 500,
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Location                                                                   ',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                enabled: asd,
               
                maxLines: 2,
                initialValue:
                    location,
                    keyboardType: TextInputType.text,
                onChanged: (value) {
                  setState(() {
                    location = value;
                  });
                },
              ),
              SizedBox(height: 5),
              Text(
                'Pincode                                                                   ',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                  keyboardType: TextInputType.number,
                  enabled: asd,
                  maxLines: 1,
                  initialValue: pincode,
                  onChanged: (value) {
                    setState(() {
                      pincode = value;
                    });
                  }),
              SizedBox(height: 5),
              Text(
                'Date of birth                                                                   ',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                  enabled: asd,
                  maxLines: 1,
                  initialValue: dob,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    setState(() {
                      dob = value;
                    });
                  }),
              SizedBox(height: 5),
              Text(
                'Gender                                                                   ',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                  enabled: asd,
                  maxLines: 1,
                  initialValue: gen,
                  // keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    setState(() {
                      gen = value;
                    });
                  }),
              SizedBox(height: 5),
              Text(
                'WhatsApp                                                                   ',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                  enabled: asd,
                  maxLines: 1,
                  initialValue: whatsapp,
                  keyboardType: TextInputType.phone,
                  onChanged: (value) {
                    setState(() {
                      whatsapp = value;
                    });
                  }),
              SizedBox(height: 5),
              Text(
                'Email                                                                   ',
                style: TextStyle(color: Colors.grey),
              ),
              TextFormField(
                  enabled: asd,
                  maxLines: 1,
                  initialValue: email,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  }),
            ],
          ),
        ),
      ]),
    );
  }
}
