import 'package:flutter/widgets.dart';
import 'package:ppnbm/detailPerizinan/detailPerizinan.dart';
import 'package:ppnbm/homeScreen/homeScreen.dart';
import 'package:ppnbm/loginScreen/loginScreen.dart';
import 'package:ppnbm/splashScreen/splashScreen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailPerizinan.routeName: (context) => DetailPerizinan(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
