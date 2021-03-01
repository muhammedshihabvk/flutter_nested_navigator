import 'package:flutter/material.dart';
import 'file:///D:/FlutterUdemyProjects/flutter_nested_navigator/lib/pages/SettingsPage.dart';
import 'file:///D:/FlutterUdemyProjects/flutter_nested_navigator/lib/pages/brandPage.dart';
import 'package:flutter_nested_navigator/customNavigator.dart';
import 'file:///D:/FlutterUdemyProjects/flutter_nested_navigator/lib/pages/myAccountPage.dart';
import 'package:flutter_nested_navigator/pages/homePage.dart';

class MyHomeScreen extends StatefulWidget {

  static final routeName = "/MyHomeScreen";

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  List<Widget> pageList = List<Widget>();
  int selectedIndex = 0;

  @override
  void initState() {
    pageList.add(CustomNavigator(initialRoute: HomePage.routeName));
    pageList.add(BrandsPage());
    pageList.add(SettingsPage());
    pageList.add(MyAccountPage());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: selectedIndex,
        children: pageList,
      ),
      // body: pageList[selectedIndex],
      bottomNavigationBar: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.all(Radius.circular(50)),
        // ),
        margin: EdgeInsets.only(bottom: 20),
        child: BottomNavigationBar(
          backgroundColor: Colors.deepOrange,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.celebration), label: "Brands"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "My Account")
          ],
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex=value;
            });
          },
        ),
      ),
    );
  }
}
