import 'package:flutter/material.dart';

import '../constants.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({
    Key key,
    this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            "assets/images/logo bulukumba.png",
            height: 50,
          ),
          SizedBox(height: defaultPadding / 2),
          Text(
            "Dinas Penanaman Modal Dan\nPelayanan Terpadu Satu Pintu\nKabupaten Bulukumba",
            textAlign: TextAlign.center,
            style: TextStyle(
              wordSpacing: 3,
              fontWeight: FontWeight.w400,
              fontFamily: "Lato",
              fontSize: 14,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
