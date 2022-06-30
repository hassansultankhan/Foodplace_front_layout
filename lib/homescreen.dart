import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_layout1/burgers_page.dart';
import 'package:front_layout1/main_body.dart';
import 'package:front_layout1/sandwiches_page.dart';
import 'package:front_layout1/swipe.dart';
import 'awesome_dialogue.dart';

class homescreen extends StatefulWidget {
  const homescreen({ Key? key }) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var screens = [MainBody(), sandwiches(), burgers()];
  int selecteditem =1;
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
      body:
      Swipe(),
      //  screens[selecteditem], 

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xfffece20),
        selectedItemColor: Colors.brown[800],
        unselectedItemColor: Colors.brown,
        selectedFontSize: 20,
        
        currentIndex: selecteditem,
        onTap: (int i)=> bottomclick(i, context),
        
        items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'Pizzas'),
        BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'Sandwiches'),
        BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: 'Burgers'),
      ]),
    );
  }

  bottomclick(int index, BuildContext context){
    setState(() {
      selecteditem = index;
    });
    
    if (index == 0)
    {
        // click("pizzas", "", context);
    }
    else if(index == 1)
    {
        
    }
    else if(index == 2)
    {
        // click("Burgers", "", context);
    }

  }
}
