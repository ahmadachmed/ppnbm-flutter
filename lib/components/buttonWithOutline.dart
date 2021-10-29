import 'package:flutter/material.dart';
import 'package:ppnbm/constants.dart';

class ButtonwithOutline extends StatelessWidget {
  final String text;
  final Function press;
  const ButtonwithOutline({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: bgColor,
        padding: EdgeInsets.all(defaultPadding),
        textStyle: const TextStyle(fontSize: 16),
        //backgroundColor: Colors.white,
        side: BorderSide(color: primaryColor, width: 2),
      ),
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(color: bgColor, fontFamily: "Lato"),
      ),
    );
  }
}
