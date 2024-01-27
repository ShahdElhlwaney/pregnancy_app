


import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String textButton;
  final Color buttonColor;
  final Function() onPressed;
  const Button({Key? key, required this.textButton, required this.buttonColor, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: TextButton(

           onPressed:onPressed,
        style: ButtonStyle(

          shape: MaterialStateProperty.all(
           RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(16)
           )
          ),
          backgroundColor:MaterialStateProperty.all(buttonColor)
        ),
        child: Text(textButton,style: const TextStyle(
          color: Colors.white
        ),) ,

      ),
    );
  }
}
