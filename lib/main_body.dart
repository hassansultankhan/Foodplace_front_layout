import 'package:flutter/material.dart';
import 'package:front_layout1/radio_button.dart';
import 'package:front_layout1/text_input.dart';

import 'awesome_dialogue.dart';

class MainBody extends StatelessWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Package;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 290,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/pizza_with_yellow_bg.png'),
                ),
              ),
              // color: Color(0xfffece20),
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // TextInput(this.data, this.FontSize, this.weight, this.FontColor, this.Family,
                  // this.toppad, this.leftpad);
                  TextInput("Delcious Crusty Pizza", 25.00, FontWeight.w700,
                      0Xff2e271f, 'Poppins', 0, 0),
                  TextInput("Category: chicken", 20.00, FontWeight.w300,
                      0XffAAB6B7, 'Bebas', 10, 0),
                  TextInput("PKR. 559/Serving", 20.00, FontWeight.w200,
                      0Xff2e271f, 'Poppins', 10, 0),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      height: 1,
                      color: Color(0xFFfece20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 215,
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextInput("Special packages for this week", 15.00,
                        FontWeight.w900, 0Xff2e271f, 'Poppins', 0, 15),
                    Radiolist(),
                  ]),
            ),
            InkWell(
              // splashColor: Colors.red,
              // overlayColor:?

              onTap: () => click("Order Placed,\nthankyou", "", context),
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 250,
                child: TextInput("Place Order", 25, FontWeight.w900, 0Xff2e271f,
                    'Raleway', 0, 0),
                decoration: const BoxDecoration(
                  color: Color(0Xfffece20),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            // SizedBox(
            //   height: 40,
            // )
          ],
        ),
      ),
    );
  }
}
