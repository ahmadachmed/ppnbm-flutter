import 'package:flutter/material.dart';

import '../../constants.dart';

class RecomendationIzin extends StatelessWidget {
  const RecomendationIzin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Builder(builder: (context) {
        return Row(
          children: [
            IzinCard(
              title: "Persyaratan",
              subtitle: "Tinjau Persyaratan",
              press: () {},
            ),
            IzinCard(
              title: "IKM",
              subtitle: "Indeks Kepuasan Masyarakat",
              press: () {},
            ),
            IzinCard(
              title: "Pengaduan",
              subtitle: "Ajukan Pengaduan",
              press: () {},
            ),
            SizedBox(width: defaultPadding),
          ],
        );
      }),
    );
  }
}

class IzinCard extends StatelessWidget {
  const IzinCard({
    Key key,
    @required this.title,
    @required this.subtitle,
    this.press,
  }) : super(key: key);

  final String title, subtitle;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultPadding,
        bottom: defaultPadding,
        top: defaultPadding,
      ),
      child: SizedBox(
        width: 200,
        height: 70,
        child: InkWell(
          onTap: press,
          child: Container(
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
            child: ListTile(
              contentPadding: EdgeInsets.only(
                  bottom: defaultPadding,
                  //top: defaultPadding / 2,
                  left: defaultPadding,
                  right: defaultPadding * 0.5),
              title: Text(
                title,
                style: TextStyle(fontSize: 14),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
