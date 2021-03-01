import 'package:flutter/material.dart';
import 'package:flutter_nested_navigator/pages/SettingsPage.dart';
import 'package:flutter_nested_navigator/pages/homePage.dart';
import 'package:flutter_nested_navigator/pages/testPage.dart';

class MyAccountPage extends StatelessWidget {
  static const routeName = "/MyAccountPage";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("My Account Window",textScaleFactor: 2,),
          FlatButton(onPressed: () {
              // Navigator.pushNamed(context, HomePage.routeName,arguments: "argument from MyAccount page");
            Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(),));
            // Navigator.pop(context);
          }, child: Text("press"),color: Colors.blueGrey,)
        ],),
      ),
    );
  }
}
