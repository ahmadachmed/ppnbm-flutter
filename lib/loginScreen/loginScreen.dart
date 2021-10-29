import 'package:flutter/material.dart';
import 'package:ppnbm/constants.dart';
import 'package:ppnbm/loginScreen/components/body.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkBlackColor,
      appBar: AppBar(
        backgroundColor: darkBlackColor,
        title: Text("Login"),
      ),
      body: Body(),
    );
  }
}
