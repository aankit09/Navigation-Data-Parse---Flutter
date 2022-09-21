import 'package:flutter/material.dart';
import 'package:routing_navigation/screen_three.dart';
import 'package:routing_navigation/utils/routes_name.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;
  ScreenTwo({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen two'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.data['name'],
                  style: const TextStyle(
                      fontSize: 50,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  widget.data['age'],
                  style: const TextStyle(
                      fontSize: 50,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.screenthree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue.shade500),
                child: const Center(
                    child: Text(
                  'Screen TWO',
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
