import 'package:flutter/material.dart';
import 'package:ppnbm/components/defaultForm.dart';
import 'package:ppnbm/constants.dart';
import 'package:ppnbm/homeScreen/homeScreen.dart';

class PeroranganTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        child: Column(
          children: [
            SizedBox(height: defaultPadding),
            DefaultForm(
              hintText: "Masukkan Nomor Induk KTP",
              icon: "assets/icons/credit-card.svg",
              color: darkBlackColor.withOpacity(0.1),
            ),
            SizedBox(height: defaultPadding),
            DefaultForm(
              hintText: "Masukkan Kata Sandi",
              icon: "assets/icons/lock.svg",
              color: darkBlackColor.withOpacity(0.1),
            ),
            SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Lupa kata sandi ?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Ingatkan",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
                child: Text("Login"),
                style: TextButton.styleFrom(
                  animationDuration: Duration(milliseconds: 800),
                  primary: bgColor,
                  padding: EdgeInsets.only(
                      top: defaultPadding, bottom: defaultPadding),
                  textStyle: Theme.of(context).textTheme.bodyText2,
                  backgroundColor: primaryColor,
                ),
              ),
            ),
            SizedBox(height: defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum Memiliki Akun ?"),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Daftar di sini",
                    style: TextStyle(color: primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
