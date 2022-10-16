import 'package:flutter/material.dart';

class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "lib/images/2.gif",
              width: 500,
              height: 500,
            ),
            Text(
              'what are we waiting',
              style: TextStyle(
                color: Color.fromARGB(255, 51, 116, 52),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'So lets start',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
