import "package:flutter/material.dart";
import 'package:siakad/app/app_theme.dart';
import 'package:siakad/app/colors.dart';
import 'package:siakad/ui/screen/berita/berita.dart';
import 'package:siakad/ui/screen/hasil_studi/hasil_studi.dart';
import 'package:siakad/ui/screen/home/home.dart';
import 'package:siakad/ui/screen/jadwal/jadwal.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  List<Widget> screen = [
    HomePage(),
    BeritaPage(),
    JadwalPage(),
    HasilStudiPage()
  ];
  int i = 0;
  void onTap(int index) {
    setState(() {
      i = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bodyColor,
        title: appBarContent(),
        titleTextStyle: TextStyle(color: AppColors.fontColor),
      ),
      body: screen.elementAt(i),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Berita"),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: "Jadwal"),
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart), label: "Hasil Studi"),
      ], currentIndex: i, onTap: onTap, type: BottomNavigationBarType.fixed),
    );
  }

  Widget appBarContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [userInformation(), userProfilePhoto()],
    );
  }

  Widget userProfilePhoto() {
    return Container(
      child: Image.asset("assets/images/profile.jpeg"),
      height: 50,
      width: 50,
    );
  }

  Widget userInformation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            "Hai, Ridho Arif Wicaksono",
            style: TextStyle(
                color: AppColors.fontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          alignment: Alignment.topRight,
          child: Text(
            "2118055 - Teknik Informatika",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
          ),
        ),
      ],
    );
  }

  BottomNavigationBarItem bottomIcon(IconData icons, String labels) {
    return BottomNavigationBarItem(icon: Icon(icons), label: labels);
  }
}
