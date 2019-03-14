import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  static const String routeName = "/events";

  @override
  EventState createState() {
    return new EventState();
  }
}

class EventState extends State<Events>{
  int n1=0, n2=0, n3=0, n4=0, res = 0;

  final v1 = TextEditingController();
  final v2 = TextEditingController();
  final v3 = TextEditingController();
  final v4 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    v1.dispose();
    v2.dispose();
    v3.dispose();
    super.dispose();
  }

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
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: new Container(
          child: new Form(
              child: new ListView(
                padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
                children: <Widget>[
                  new TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Total event currency",
                      hintText: "Total amount of event currency to complete the event",
                    ),
                    keyboardType: TextInputType.number,
                    controller: v1,
                  ),
                  new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0)
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Owned event currency",
                      hintText: "Total amount of event currency you have",
                    ),
                    keyboardType: TextInputType.number,
                    controller: v2,
                  ),
                  new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0)
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Event currency per try",
                      hintText: "Amount of event currency you gain per try",
                    ),
                    keyboardType: TextInputType.number,
                    controller: v3,
                  ),
                  new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0)
                  ),
                  new TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Diamond cost",
                      hintText: "Diamond cost per try",
                    ),
                    keyboardType: TextInputType.number,
                    controller: v4,
                  ),
                  new Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0)
                  ),
                  new MaterialButton(
                    child: Text("Calculate"),
                    // Execute when pressed
                    minWidth: 300.0,
                    textColor: Colors.white,
                    color: Colors.pinkAccent,
                    onPressed: (){
                      n1 = int.parse(v1.text);
                      n2 = int.parse(v2.text);
                      n3 = int.parse(v3.text);
                      n4 = int.parse(v4.text);

                      res = ((n1-n2)~/n3)*n4;

                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // Retrieve the text the user has typed in using our
                            // TextEditingController
                            content: Text("You need $res"),
                          );
                        },
                      );
                    },
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}