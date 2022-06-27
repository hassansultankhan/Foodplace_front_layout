import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_layout1/main_body.dart';
import 'awesome_dialogue.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // to make scaffold body extended behind appbar
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          // title: const Text("Flutter"),
          elevation: 0, // to remove shadow underneath appbar
          // centerTitle: true,
          leading: IconButton(
            onPressed: () => click("RETURN", "No page to return to", context),
            icon: const Icon(Icons.arrow_back_ios_rounded),
            color: Colors.black,
            iconSize: 30,
          ),
          actions: [
            IconButton(
              onPressed: () => click("LIKE",
                  "Your preference has been added to your log", context),
              icon: const Icon(CupertinoIcons.heart),
              color: Colors.black,
              iconSize: 30,
            ),
            IconButton(
              onPressed: () => click("CART", "Cart is updated", context),
              padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
              icon: const Icon(CupertinoIcons.cart),
              color: Colors.black,
              iconSize: 30,
            ),
          ]),
      body: MainBody(),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      ]),
    );
  }
}
