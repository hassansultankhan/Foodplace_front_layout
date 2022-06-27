import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  String data, Family;
  double FontSize, toppad, leftpad;
  var weight, FontColor;

  TextInput(this.data, this.FontSize, this.weight, this.FontColor, this.Family,
      this.toppad, this.leftpad);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: toppad, left: leftpad),
      child: Text(
        data,
        style: TextStyle(
          fontSize: FontSize,
          fontWeight: weight,
          color: Color(FontColor),
          fontFamily: Family,
        ),
        // textAlign:
      ),
    );
  }
}
