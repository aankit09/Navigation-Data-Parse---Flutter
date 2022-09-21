import 'package:flutter/material.dart';
import 'package:routing_navigation/screen_two.dart';
import 'package:routing_navigation/utils/routes_name.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.screentwo,
                    arguments: {'name': 'Ankit Sanvedi', 'age': '28'});
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue.shade500),
                child: const Center(
                    child: Text(
                  'Screen ONE',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
