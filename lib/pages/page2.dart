import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "lib/images/3.gif",
              width: 300,
              height: 500,
            ),
            Text(
              'I am Software',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Developer',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
