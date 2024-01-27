import 'package:flutter/material.dart';

class SignInComponent extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color borderColor;
  final Color colorComponent;
  final Color textColor;
  final Function()onTap;
  const SignInComponent(
      {Key? key,
      required this.text,
       this.icon,
      this.borderColor = Colors.transparent, required this.colorComponent,  this.textColor=Colors.white, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      height: 50,
      onPressed: onTap,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(24)),
      color: colorComponent,
      child: Row(
        children: [
          Center(
              child: Icon(
            icon,
            color: Colors.white,
          )),
          const SizedBox(
            width: 60,
          ),
          Text(
            text,
            style:  TextStyle(color: textColor),
          )
        ],
      ),
    );
  }
}
