import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  static const String routeName = "/events";

  @override
  EventState createState() {
    return new EventState();
  }
}

class EventState extends State<Events>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // AppBar
      appBar: new AppBar(
        // Title
        title: new Text("Events Calculator"),
        // App Bar background color
        backgroundColor: Colors.pink,
      ),
      // Body
      body: new Container(
        // Center the content
        child: new Center(
          child: new Column(
            // Center content in the column
            mainAxisAlignment: MainAxisAlignment.start,
            // add children to the column
            children: <Widget>[
              // Text
              new Text(
                "You need X diamonds to complete the event!",
                // Setting the style for the Text
                style: new TextStyle(fontSize: 20.0),
                // Set text alignment to center
                textAlign: TextAlign.center,
              ),
              new TextField(
                decoration: InputDecoration(labelText: "Total amount of event coins you have"),
                keyboardType: TextInputType.number,
              ),
              // Icon Button
              new IconButton(
                icon: new Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                // Execute when pressed
                onPressed: () {
                  // use the navigator to goto a named route
                  Navigator.of(context).pushNamed('/');
                },
                // Setting the size of icon
                iconSize: 80.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}