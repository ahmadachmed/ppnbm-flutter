import 'package:flutter/material.dart';
import 'package:ppnbm/components/logoWithTitle.dart';
import 'package:ppnbm/constants.dart';
import 'package:ppnbm/responsive.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({Key key, this.text, this.image}) : super(key: key);

  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoTitle(),
        //SizedBox(height: defaultPadding),
        Spacer(),
        AspectRatio(
          aspectRatio: Responsive.isMobile(context) ? 2.5 : 1.75,
          child: Image.asset(
            image,
          ),
        ),
        //SizedBox(height: defaultPadding),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 16, fontFamily: "Lato"),
          ),
        )
      ],
    );
  }
}
