import 'package:flutter/material.dart';

import '../constants.dart';
import 'customSuffixIcon.dart';

class DefaultForm extends StatelessWidget {
  final String hintText, icon;
  final Color color;
  const DefaultForm({
    Key key,
    @required this.hintText,
    @required this.icon,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding / 2),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextFormField(
        //obscureText: true,
        keyboardType: TextInputType.number,
        maxLength: 16,
        decoration: InputDecoration(
          counterText: "",
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, fontFamily: "Lato"),
          suffixIcon: CustomSuffixIcon(icon: icon),
        ),
      ),
    );
  }
}
