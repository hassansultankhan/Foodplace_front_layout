import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class sandwiches extends StatefulWidget {
  const sandwiches({ Key? key }) : super(key: key);

  @override
  State<sandwiches> createState() => _sandwichesState();
}

class _sandwichesState extends State<sandwiches> {
  TextEditingController numbercontroller = new TextEditingController();
  String imagepath = "https://media.timeout.com/images/105727033/image.jpg";
  String result = "WAITING..";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(imagepath, height: 260, fit: BoxFit.fitWidth, alignment: Alignment.center,),
        SizedBox(height:25),
        Text(result),
        SizedBox(height:25),
        Padding(padding: EdgeInsets.only(left: 25, right: 25),
        child: TextField(
          controller: numbercontroller,
          decoration: InputDecoration(prefixIcon: Icon(Icons.menu_book_outlined),
          prefixIconColor: Colors.black,
          hintText: "Enter quantity of meals e.g. 3)",
          // iconColor: Colors.black, 
          // fillColor: Colors.greenAccent,
          // focusColor: Colors.amber,
          // hoverColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            // borderSide: BorderSide(color: Colors.amberAccent) 
          ),
        ),
        keyboardType: TextInputType.number,
    ),
        ),
        SizedBox(height:15),
        ElevatedButton(onPressed: (){execute(context);}, child: Text("Place Order"),),
      ],
    );
  }
  execute(BuildContext c){
   String mealquantity = numbercontroller.text;
   if (mealquantity.isEmpty){
    clickField("Invalid input", "Order atleast 1 meal ",  c);
     setState(() {
       result = "Please provide a valid input";
    });
   }
   else{
    clickField('Order placed', 'your order id of $mealquantity sandwiches', c);
   
    setState(() {
       result = "Order Placed";
    });
       }
  }

  
void clickField(String data, String message, BuildContext c) {
  AwesomeDialog(
    context: c,
    dialogType: DialogType.INFO,
    animType: AnimType.SCALE,
    dialogBackgroundColor: Colors.white70,
    title: data,
    desc: message,
    descTextStyle: TextStyle(fontSize: 15),
    btnCancelOnPress: () {},
    btnOkOnPress: () {},
  ).show();
}

}

