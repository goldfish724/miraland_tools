import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // AppBar
      appBar: new AppBar(
        // Title
        title: new Text("Miraland Tools"),
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
              new Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
              // Text
              new Text(
                "Choose a calculator below",
                // Setting the style for the Text
                style: new TextStyle(fontSize: 20.0,),
                // Set text alignment to center
                textAlign: TextAlign.center,
              ),
              new Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
              ),
              new MaterialButton(
                child: Text("Events"),
                minWidth: 300.0,
                textColor: Colors.white,
                color: Colors.pinkAccent,
                // Execute when pressed
                onPressed: () {
                  // use the navigator to goto a named route
                  Navigator.of(context).pushNamed('/events');
                },
              ),
              new Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
              ),
              new MaterialButton(
                child: Text("Craft"),
                // Execute when pressed
                minWidth: 300.0,
                textColor: Colors.white,
                color: Colors.pinkAccent,
                onPressed: () {
                  // use the navigator to goto a named route
                  Navigator.of(context).pushNamed('/craft');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}