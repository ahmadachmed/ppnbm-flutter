import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ppnbm/detailPerizinan/detailPerizinan.dart';
import 'package:ppnbm/models/perizinanMenu.dart';

import '../../constants.dart';

class MenuUsaha extends StatelessWidget {
  const MenuUsaha({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
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
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    perizinanMenus.length,
                    (index) => IconMenu(
                      icon: perizinanMenus[index].icon,
                      title: perizinanMenus[index].title,
                      subtitle: perizinanMenus[index].subtitle,
                      color: perizinanMenus[index].color,
                      press: () => Navigator.pushNamed(
                        context,
                        DetailPerizinan.routeName,
                        arguments: DetailPerizinanArguments(
                            perizinan: perizinanMenus[index]),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    perizinanMenus.length,
                    (index) => IconMenu(
                      icon: perizinanMenus2[index].icon,
                      title: perizinanMenus2[index].title,
                      subtitle: perizinanMenus2[index].subtitle,
                      color: perizinanMenus2[index].color,
                      press: () => Navigator.pushNamed(
                        context,
                        DetailPerizinan.routeName,
                        arguments: DetailPerizinanArguments(
                            perizinan: perizinanMenus2[index]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconMenu extends StatelessWidget {
  const IconMenu({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.subtitle,
    @required this.press,
    @required this.color,
  }) : super(key: key);

  final String icon, title, subtitle;
  final Color color;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: bodyTextColor.withOpacity(0.03),
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: SvgPicture.asset(
              icon,
              height: 25,
              color: color,
            ),
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Container(
          width: 75,
          child: Column(
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyText1),
              Text(subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption),
            ],
          ),
        ),
      ],
    );
  }
}
