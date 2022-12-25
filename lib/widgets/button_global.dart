import 'package:flutter/material.dart';

import '../style/app_color.dart';
class ButtonGlobal extends StatelessWidget {
   ButtonGlobal({
      required this.buttonText,
    required this.buttonDecoration,
    required this.buttonTextColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);
   final String buttonText;
   final Decoration buttonDecoration;
   final Color buttonTextColor;
   var onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: buttonDecoration,
        child:Center(child: Text(buttonText,style: TextStyle(color: buttonTextColor,fontWeight: FontWeight.bold,fontSize: 10.0),)),
      ),
    );
  }
}