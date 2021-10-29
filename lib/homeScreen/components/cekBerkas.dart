import 'package:flutter/material.dart';

import '../../constants.dart';

class CekBerkas extends StatelessWidget {
  const CekBerkas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: defaultPadding,
          right: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding / 2),
      margin: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: bodyTextColor.withOpacity(0.05),
            spreadRadius: 4,
            blurRadius: 4,
            offset: Offset(0, 0),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Cek Berkas Perizinan Anda",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TextButton(
            onPressed: () {},
            child: Text("Di Sini"),
            style: TextButton.styleFrom(
              animationDuration: Duration(milliseconds: 800),
              primary: bgColor,
              padding: EdgeInsets.only(
                  top: defaultPadding / 2,
                  bottom: defaultPadding / 2,
                  left: defaultPadding * 1.5,
                  right: defaultPadding * 1.5),
              textStyle: Theme.of(context).textTheme.bodyText2,
              backgroundColor: darkBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
