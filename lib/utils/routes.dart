import 'package:flutter/material.dart';
import 'package:routing_navigation/home_screen.dart';
import 'package:routing_navigation/screen_three.dart';
import 'package:routing_navigation/screen_two.dart';
import 'package:routing_navigation/utils/routes_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RoutesName.screentwo:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));
      case RoutesName.screenthree:
        return MaterialPageRoute(builder: (context) => ScreenThree());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text('Not Route Defined'),
            ),
          );
        });
    }
  }
}
