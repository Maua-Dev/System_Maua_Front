import 'package:flutter/material.dart';

class PageViewCustom extends StatefulWidget {
  PageViewCustom({Key? key}) : super(key: key);

  @override
  _PageViewCustomState createState() => _PageViewCustomState();
}

class _PageViewCustomState extends State<PageViewCustom> {
  final _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      
    );
  }
}
