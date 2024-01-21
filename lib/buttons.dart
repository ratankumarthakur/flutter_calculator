import 'package:flutter/material.dart';

// creating Stateless Widget for buttons
class MyButton extends StatelessWidget {

// declaring variables
  final color;
  final textColor;
  final String buttonText;
  final buttontapped;

//Constructor
  MyButton({this.color, this.textColor, this.buttonText="", this.buttontapped});

  var bgcolor=Colors.grey[800];
  var dshcolor=Colors.black;
  var lshcolor=Colors.grey.shade500;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(555),
            color: bgcolor,
            boxShadow: [
              BoxShadow(
                color: dshcolor,
                blurRadius: 15,
                offset: Offset(5,5),
              ),

              BoxShadow(
                  color: lshcolor,
                  blurRadius: 15,
                  offset: Offset(-5,-5)
              )
            ]
          ),

          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                color: textColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
