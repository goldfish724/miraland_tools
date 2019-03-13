import 'package:flutter/material.dart';
import 'package:miraland_tools/screens/home.dart';
import 'package:miraland_tools/screens/events.dart';
import 'package:miraland_tools/screens/craft.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new HomePage(), // home has implicit route set at '/'
        // Setup routes
        routes: <String, WidgetBuilder>{
          // Set named routes
          Events.routeName: (BuildContext context) => new Events(),
          Craft.routeName: (BuildContext context) => new Craft(),
        });
    }
}



