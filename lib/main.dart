import 'package:flutter/material.dart';
import 'package:routing_navigation/home_screen.dart';
import 'package:routing_navigation/screen_three.dart';
import 'package:routing_navigation/screen_two.dart';
import 'package:routing_navigation/utils/routes_name.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routing and Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
