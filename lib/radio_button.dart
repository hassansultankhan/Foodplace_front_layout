import 'package:flutter/material.dart';
import 'package:front_layout1/text_input.dart';

class Radiolist extends StatefulWidget {
  const Radiolist();

  @override
  State<Radiolist> createState() => _RadiolistState();
}

class _RadiolistState extends State<Radiolist> {
  dynamic _value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // child: ListTile(
          Row(
            children: [
              Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0XffB5880b)),
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
              const SizedBox(
                width: 10,
              ),
              TextInput("Family Serving for PKR. 2400/-", 15.00,
                  FontWeight.w900, 0Xff2e271f, 'Raleway', 0, 0),
            ],
          ),
          // ),
          Row(
            children: [
              Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0XFFB5880b)),
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
              const SizedBox(
                width: 10,
              ),
              TextInput("Group Serving for PKR. 1900/-", 15.00, FontWeight.w900,
                  0Xff2e271f, 'Raleway', 0, 0),
            ],
          ),
          Row(
            children: [
              Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0XFFB5880b)),
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
              const SizedBox(
                width: 10,
              ),
              TextInput("Trio Serving for PKR. 1400/- ", 15.00, FontWeight.w900,
                  0Xff2e271f, 'Raleway', 0, 0),
            ],
          ),
          Row(
            children: [
              Radio(
                  fillColor: MaterialStateColor.resolveWith(
                      (states) => Color(0XFFB5880b)),
                  value: 4,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
              const SizedBox(
                width: 10,
              ),
              TextInput("Duo Serving for PKR. 900/-", 15.00, FontWeight.w900,
                  0Xff2e271f, 'Raleway', 0, 0),
            ],
          ),
        ],
      ),
    );
  }
}
