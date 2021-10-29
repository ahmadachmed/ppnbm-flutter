import 'package:flutter/material.dart';
import 'package:ppnbm/constants.dart';
import 'package:ppnbm/routes.dart';
import 'package:ppnbm/splashScreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meja Kerja',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: primaryColor),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: bodyTextColor, fontFamily: "Lato"),
          bodyText2: TextStyle(color: bodyTextColor, fontFamily: "Lato"),
          headline5: TextStyle(color: bodyTextColor, fontFamily: "Lato"),
        ),
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
