import 'package:flutter/material.dart';
import 'package:siakad/app/app_theme.dart';
import 'package:siakad/app/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        children: [jumbotron(), menuPage()],
      ),
    );
  }

  Widget jumbotron() {
    return Card(
      margin: EdgeInsets.all(10),
      color: AppColors.primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 12, top: 12, bottom: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Indeks Prestasi",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Semester 5",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 10),
                child: Text(
                  "3.56",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                margin: EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Colors.white),
                      alignment: Alignment.topRight,
                      child: Text(
                        "Seluruh Semester",
                        style: TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.arrow_right,
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                jumbotronIcon(Icons.notifications, "Notifikasi"),
                jumbotronIcon(Icons.qr_code, "Scan QR")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget jumbotronIcon(IconData icon, String label) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.bodyColor,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Icon(icon, size: 40, color: AppColors.primaryColor),
          ),
        ),
        Text(
          label,
          style: TextStyle(color: AppColors.bodyColor),
        )
      ],
    );
  }

  Widget menuIcon(IconData icon, String label) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          margin: EdgeInsets.all(5),
          child: Container(
            margin: EdgeInsets.all(10),
            child: Icon(icon, size: 40, color: AppColors.bodyColor),
          ),
        ),
        Text(label)
      ],
    );
  }

  Widget menuPage() {
    return Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            menuIcon(Icons.calendar_month, "Kalender"),
            menuIcon(Icons.message, "Pesan"),
            menuIcon(Icons.folder, "Reository"),
            menuIcon(Icons.add_photo_alternate_rounded, "Presensi"),
            menuIcon(Icons.account_balance_wallet_rounded, "UKT"),
            menuIcon(Icons.note_alt_rounded, "Catatan"),
            menuIcon(Icons.bar_chart, "Transkip"),
            menuIcon(Icons.menu, "Lainnya"),
          ],
        ));
  }

  Widget listJadwal() {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "Jadwal Hari Ini",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        ListView(
          children: [Text("Jadwal Hari Ini")],
        )
      ],
    );
  }
}
