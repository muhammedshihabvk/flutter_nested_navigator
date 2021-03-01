import 'package:flutter/material.dart';
import 'package:flutter_nested_navigator/pages/SettingsPage.dart';
import 'package:flutter_nested_navigator/pages/brandPage.dart';
import 'package:flutter_nested_navigator/pages/myAccountPage.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/HomePage";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Text(
                "Home Page",
                textScaleFactor: 2,
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, MyAccountPage.routeName);
                print("push method on my account invoked");
                // Navigator.push(context, MaterialPageRoute(builder: (context) => MyAccountPage(),));
              },
              child: Text("My Account=>"),
              color: Colors.orange,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, SettingsPage.routeName);
              },
              child: Text("Settings=>"),
              color: Colors.deepOrange,
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, BrandsPage.routeName);
              },
              child: Text("Brand=>"),
              color: Colors.pink,
            )
          ],
        ),
      )),
    );
  }
}
