import 'package:flutter/material.dart';
import 'package:flutter_nested_navigator/pages/homePage.dart';

class BrandsPage extends StatelessWidget {

  static const routeName = "/BrandsPage";

  @override
  Widget build(BuildContext context) {
    print("brand building");
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Brand Window",textScaleFactor: 2,),
            FlatButton(onPressed: () {
              Navigator.pushNamed(context, HomePage.routeName,arguments: "argument from BrandsPage");
            }, child: Text("press"),color: Colors.blueGrey,)
          ],),
      ),
    );
  }
}
