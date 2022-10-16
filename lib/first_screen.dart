import 'package:flutter/material.dart';
import 'package:login_screen/pages/homepage.dart';
import 'package:login_screen/pages/page1.dart';
import 'package:login_screen/pages/page2.dart';
import 'package:login_screen/pages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  _firstscreenState createState() => _firstscreenState();
}

class _firstscreenState extends State<firstscreen> {
  PageController _controller = PageController();

  bool lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                lastpage = (index == 2);
              });
            },
            children: [
              page1(),
              page2(),
              page3(),
            ]),
        Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                  ),
                ),
                SmoothPageIndicator(controller: _controller, count: 3),
                lastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return homepage();
                              },
                            ),
                          );
                        },
                        child: Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text('Next'),
                      ),
              ],
            ))
      ],
    ));
  }
}
