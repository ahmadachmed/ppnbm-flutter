import 'package:flutter/material.dart';
import 'package:ppnbm/loginScreen/loginScreen.dart';

import '../../constants.dart';
import 'sliderBanner.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          color: darkBlackColor),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 80,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: bgColor,
                          //padding: EdgeInsets.all(),
                          textStyle: const TextStyle(fontSize: 14),
                          //backgroundColor: Colors.white,
                          side: BorderSide(color: primaryColor, width: 2),
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, LoginScreen.routeName),
                        child: Text(
                          "Login",
                          style: TextStyle(color: bgColor, fontFamily: "Lato"),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo bulukumba.png",
                      height: 40,
                    ),
                    SizedBox(width: defaultPadding / 2),
                    Container(
                      padding: EdgeInsets.only(bottom: defaultPadding / 2),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: primaryColor, width: 2.5)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "DPMPTSP",
                            style: TextStyle(
                              color: bgColor,
                              fontSize: 14,
                              fontFamily: "Lato",
                            ),
                          ),
                          Text(
                            "Kabupaten Bulukumba".toUpperCase(),
                            style: TextStyle(
                              color: bgColor,
                              fontSize: 14,
                              fontFamily: "Lato",
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: defaultPadding),
                SliderBanner(),
                SizedBox(height: defaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
