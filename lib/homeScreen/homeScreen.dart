import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ppnbm/constants.dart';
import 'package:ppnbm/homeScreen/components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: bodyTextColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/aktifitas.svg',
              color: bodyTextColor,
            ),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/bell.svg',
              color: bodyTextColor,
            ),
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: bodyTextColor,
            ),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: bodyTextColor,
        onTap: _onItemTapped,
        unselectedItemColor: bodyTextColor,
      ),
    );
  }
}
