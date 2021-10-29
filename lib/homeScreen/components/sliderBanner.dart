import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ppnbm/models/sliderImage.dart';

import '../../constants.dart';

class SliderBanner extends StatelessWidget {
  const SliderBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: demoSlider.length,
      options: CarouselOptions(
        enlargeCenterPage: true,
        aspectRatio: 16 / 8,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 1000),
        viewportFraction: 1,
      ),
      itemBuilder: (context, index, realIndex) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(demoSlider[index].image),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      darkBlackColor.withOpacity(0.8)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.6, 0.95],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, darkBlackColor.withOpacity(0.8)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.95],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    demoSlider[index].title,
                    style: TextStyle(
                        color: bgColor, fontSize: 14, fontFamily: "Lato"),
                  ),
                  Text(
                    demoSlider[index].subtitle,
                    maxLines: 2,
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: bgColor,
                        fontSize: 12,
                        fontFamily: "Lato"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
