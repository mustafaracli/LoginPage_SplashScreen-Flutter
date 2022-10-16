import 'dart:ui';

import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "lib/images/4.gif",
              width: 500,
              height: 500,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'To My Blog',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}
