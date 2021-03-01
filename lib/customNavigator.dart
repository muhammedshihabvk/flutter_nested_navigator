import 'package:flutter/material.dart';
import 'package:flutter_nested_navigator/pages/SettingsPage.dart';
import 'package:flutter_nested_navigator/pages/brandPage.dart';
import 'package:flutter_nested_navigator/pages/homePage.dart';
import 'package:flutter_nested_navigator/pages/myAccountPage.dart';

class CustomNavigator extends StatefulWidget{
  final String initialRoute;

  CustomNavigator({this.initialRoute});

  @override
  _CustomNavigatorState createState() => _CustomNavigatorState();
}

class _CustomNavigatorState extends State<CustomNavigator> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: widget.initialRoute,
      onGenerateRoute: (routeSettings) {
        print(routeSettings.name + "--> inside navigator");
        print(routeSettings.arguments);

        switch (routeSettings.name) {
          case MyAccountPage.routeName:
            return MaterialPageRoute(
              builder: (context) => MyAccountPage(),
            );
          case SettingsPage.routeName:
            return MaterialPageRoute(
              builder: (context) => SettingsPage(),
            );
          case HomePage.routeName:
            return MaterialPageRoute(
              builder: (context) => HomePage(),
            );
          case BrandsPage.routeName:
            return MaterialPageRoute(
              builder: (context) => BrandsPage(),
            );
          default :
            return MaterialPageRoute(
                builder: (context) => Container(child: Text("default error screen"),)
            );
        }
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
