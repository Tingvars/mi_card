import 'package:flutter/cupertino.dart';
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
          //this makes it be only within the visible area of the device
          //A container can only have one "child" but columns and rows have multiple
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/thoraimg.jpg'),
            ),
            Text(
              "Thora Ingvarsdottir",
              style: TextStyle(
                fontFamily: "Caveat",
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "NTV STUDENT",
              style: TextStyle(
                fontFamily: "SourceSansPro",
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+354 123 4567",
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontSize: 18.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "t.ingvarsdottir@gmail.com",
                      style: TextStyle(
                        fontFamily: "SourceSansPro",
                        fontSize: 18.0,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
