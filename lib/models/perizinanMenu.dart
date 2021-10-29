import 'package:flutter/material.dart';
import 'package:ppnbm/constants.dart';

class PerizinanMenus {
  final String title, subtitle, icon;
  final int id;
  final Color color;

  PerizinanMenus({this.title, this.subtitle, this.icon, this.id, this.color});
}

List<PerizinanMenus> perizinanMenus = [
  PerizinanMenus(
      color: primaryColor,
      id: 0,
      title: "IPO",
      subtitle: "Izin Penyelenggaraan Optikal",
      icon: "assets/icons/medicine.svg"),
  PerizinanMenus(
      color: primaryColor,
      id: 1,
      title: "IUATM",
      subtitle: "Izin Usaha Toko Modern",
      icon: "assets/icons/shop (1).svg"),
  PerizinanMenus(
      color: primaryColor,
      id: 2,
      title: "IKH",
      subtitle: "Izin Klinik Hewan",
      icon: "assets/icons/paw.svg"),
  PerizinanMenus(
      color: primaryColor,
      id: 3,
      title: "IUJK",
      subtitle: "Izin Usaha Jasa Konstruksi",
      icon: "assets/icons/road.svg"),
];

List<PerizinanMenus> perizinanMenus2 = [
  PerizinanMenus(
      color: primaryColor,
      id: 0,
      title: "IUSP",
      subtitle: "Izin Usaha Simpan Pinjam",
      icon: "assets/icons/earnings.svg"),
  PerizinanMenus(
      color: primaryColor,
      id: 1,
      title: "ITAP",
      subtitle: "Izin Trayek Angkutan Penumpang",
      icon: "assets/icons/car.svg"),
  PerizinanMenus(
      color: primaryColor,
      id: 2,
      title: "IKH",
      subtitle: "Izin Klinik Hewan",
      icon: "assets/icons/paw.svg"),
  PerizinanMenus(
      color: bodyTextColor,
      id: 3,
      title: "Lainnya",
      subtitle: "Perizinan Lainnya",
      icon: "assets/icons/Lainnya.svg"),
];
