import 'package:flutter/material.dart';
import 'package:ppnbm/components/buttonWithOutline.dart';
import 'package:ppnbm/components/defaultForm.dart';

import 'package:ppnbm/homeScreen/homeScreen.dart';
import 'package:ppnbm/loginScreen/loginScreen.dart';

import '../../constants.dart';
import 'splashContent.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Tinjau proses berkas perizinan dari aplikasi",
      "image": "assets/images/splash1.png"
    },
    {
      "text": "Ajukan perizinan lebih mudah",
      "image": "assets/images/splash2.png"
    },
    {
      "text": "Dapatkan Informasi Seputar\nPerizinan dan Penanaman Modal",
      "image": "assets/images/splash3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: defaultPadding),
          Expanded(
            flex: 6,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: (context, index) => SplashContent(
                image: splashData[index]["image"],
                text: splashData[index]["text"],
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
              ],
            ),
          ),
          //Spacer(),
          SizedBox(height: defaultPadding),
          Expanded(
            flex: 4,
            child: Container(
              //width: double.infinity,
              padding: EdgeInsets.fromLTRB(defaultPadding * 2,
                  defaultPadding * 2, defaultPadding * 2, 0),
              decoration: BoxDecoration(
                color: darkBlackColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Masuk dengan NIK kamu",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        fontFamily: "Lato"),
                  ),
                  SizedBox(height: defaultPadding),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, LoginScreen.routeName),
                    child: DefaultForm(
                      color: bgColor,
                      hintText: "Masukkan NIK",
                      icon: "assets/icons/credit-card.svg",
                    ),
                  ),
                  SizedBox(height: defaultPadding),
                  Text(
                    "atau",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Lato"),
                  ),
                  SizedBox(height: defaultPadding),
                  SizedBox(
                    width: double.infinity,
                    child: ButtonwithOutline(
                      text: "Eksplor Aplikasi",
                      press: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: animationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 8,
      width: currentPage == index ? 30 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
