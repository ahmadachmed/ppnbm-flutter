import 'package:flutter/material.dart';
import 'package:ppnbm/constants.dart';
import 'package:ppnbm/detailPerizinan/components/body.dart';
import 'package:ppnbm/models/perizinanMenu.dart';

class DetailPerizinan extends StatelessWidget {
  static String routeName = "/detailperizinan";
  const DetailPerizinan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DetailPerizinanArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: darkBlackColor,
        backgroundColor: bgColor,
        title: Text(
          arguments.perizinan.subtitle,
          style: TextStyle(
            fontFamily: "Lato",
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Body(),
    );
  }
}

class DetailPerizinanArguments {
  final PerizinanMenus perizinan;

  DetailPerizinanArguments({@required this.perizinan});
}
