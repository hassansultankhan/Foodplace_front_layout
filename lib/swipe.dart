
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:front_layout1/burgers_page.dart';
import 'package:front_layout1/main_body.dart';
import 'package:front_layout1/sandwiches_page.dart';

class Swipe extends StatefulWidget {
  const Swipe({ Key? key }) : super(key: key);

  @override
  State<Swipe> createState() => _SwipeState();
}

class _SwipeState extends State<Swipe> {
  PageController _controller = PageController();
  
  @override
  Widget build(BuildContext context) {
   var screens = [
              MainBody(),
              sandwiches(),
              burgers(),
      ];
  
    return PageView(
      controller: _controller,
     
      children: screens,
    );
  }
}