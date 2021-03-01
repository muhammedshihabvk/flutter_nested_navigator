import 'package:flutter/material.dart';
import 'package:flutter_nested_navigator/pages/homePage.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = "/SettingsPage";
  @override
  Widget build(BuildContext context) {
    print("buidling settings page");
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Settings Window",textScaleFactor: 2,),
            FlatButton(onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName,arguments: "argument from SettingsPage");
            }, child: Text("press"),color: Colors.blueGrey,)
          ],),
      ),
    );
  }
}
