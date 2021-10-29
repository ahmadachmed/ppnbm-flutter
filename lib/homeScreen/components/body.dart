import 'package:flutter/material.dart';
import 'cekBerkas.dart';
import 'header.dart';
import 'menuUsaha.dart';
import 'news.dart';
import 'recomendationIzin.dart';

class Body extends StatelessWidget {
  Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            Header(),
            RecomendationIzin(),
            MenuUsaha(),
            CekBerkas(),
            News(),
            News()
          ],
        ),
      ),
    );
  }
}
