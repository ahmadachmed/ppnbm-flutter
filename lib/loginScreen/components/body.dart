import 'package:flutter/material.dart';
import 'package:ppnbm/components/logoWithTitle.dart';
import 'package:ppnbm/constants.dart';
import 'package:ppnbm/loginScreen/components/peroranganTab.dart';
import 'package:ppnbm/loginScreen/components/perusahaanTab.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: defaultPadding),
            LogoTitle(color: Colors.white),
            SizedBox(height: defaultPadding),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(defaultPadding)),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Text(
                      "Login terlebih dahulu\nuntuk mengakses layanan ini",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(height: defaultPadding),
                    TabBar(
                      controller: _controller,
                      labelColor: darkBlackColor,
                      indicatorColor: primaryColor,
                      tabs: [
                        Tab(text: "Perorangan"),
                        Tab(text: "Badan Usaha"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _controller,
                        children: [
                          PeroranganTab(),
                          PerusahaanTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
