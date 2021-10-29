import 'package:flutter/material.dart';

import '../../constants.dart';

class News extends StatelessWidget {
  const News({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: bodyTextColor.withOpacity(0.05),
            spreadRadius: 4,
            blurRadius: 4,
            offset: Offset(0, 0),
          )
        ],
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.95,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Image.asset(
                "assets/images/image2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: defaultPadding),
          Padding(
            padding:
                const EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, 0),
            child: Text(
              "2 Oktober 2021",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          SizedBox(height: defaultPadding / 2),
          Padding(
            padding: const EdgeInsets.fromLTRB(
                defaultPadding, 0, defaultPadding, defaultPadding),
            child: Text(
              "Bulukumba Regency is a regency in the southeast corner of South Sulawesi Province, Indonesia.",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
