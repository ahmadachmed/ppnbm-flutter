import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String icon;
  const CustomSuffixIcon({
    Key key,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
      child: SvgPicture.asset(
        icon,
        color: bodyTextColor.withOpacity(0.5),
        height: 10,
      ),
    );
  }
}
