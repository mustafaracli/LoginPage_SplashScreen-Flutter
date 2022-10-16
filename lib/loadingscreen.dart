import 'package:flutter/material.dart';
import 'package:login_screen/first_screen.dart';

class loadingscreen extends StatelessWidget {
  const loadingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "lib/images/5.gif",
              width: 600,
              height: 600,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'firstscreen');
                    },
                    child: Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.red,
                        fontSize: 50,
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}
