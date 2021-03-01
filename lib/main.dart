import 'package:flutter/material.dart';
import 'package:flutter_nested_navigator/myHomeScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MyHomeScreen(),
      initialRoute: MyHomeScreen.routeName,
      routes: {
          MyHomeScreen.routeName: (ctx) => MyHomeScreen(),
      },
    );
  }
}

