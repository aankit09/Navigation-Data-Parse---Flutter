import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Three'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.blue.shade500),
                child: const Center(
                    child: Text(
                  'Screen Three',
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
