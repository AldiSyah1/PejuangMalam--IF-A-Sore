import 'package:flutter/material.dart';
import 'package:aplikasi/constants.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:aplikasi/screens/login_view.dart';
import 'package:aplikasi/screens/menuitem/profile_view.dart';
import 'package:aplikasi/screens/menuitem/settings_view.dart';

// import '../aboutus.dart';
import '../menuitem/aboutus_view.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorPalette.primaryColor,
        centerTitle: true,
                actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'item1') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              } else if (value == 'item2') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage()));
              } else if (value == 'item3') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUsPage()));
              } else if (value == 'item4') {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              }
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: const Text(
                  'Profile',
                  style: TextStyle(color: Color.fromARGB(251, 91, 94, 95)),
                ),
                value: 'item1',
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Text(
                  'Settings',
                  style: TextStyle(color: Color.fromARGB(251, 91, 94, 95)),
                ),
                value: 'item2',
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Text(
                  'About Us',
                  style: TextStyle(color: Color.fromARGB(251, 91, 94, 95)),
                ),
                value: 'item3',
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Color.fromARGB(251, 91, 94, 95)),
                ),
                value: 'item4',
              ),
              //tambahkan menu disini
            ],
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 8),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
              padding: EdgeInsets.fromLTRB(38, 17, 39, 17),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: SizedBox(
                  width: 203,
                  height: 166,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.asset("assets/images/https://tse1.mm.bing.net/th?id=OIP.IKUPqQzyy71xqPzQijmDjAHaHa&pid=Api&P=0&h=180",
                    fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 232,
              decoration: BoxDecoration(
                color: Color(0xfff5f5f5),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 203,
                    child: Container(
                      width: 226,
                      height: 20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 24, 0),
                            width: 23,
                            height: 20,
                            child: Icon(Icons.local_shipping),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 27, 0),
                            child: Text("45 Items",textAlign: TextAlign.center),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 23, 0),
                            width: 23,
                            height: 20,
                            child: Icon(Icons.inventory),
                          ),
                          Text("250 Items",textAlign: TextAlign.center),
                        ]
                      ),
                    )
                  ),
                  Positioned(
                    left: 107,
                    top: 30,
                    child: Align(
                      child: SizedBox(
                        width: 69,
                        height: 22,
                        child: Text('Deskripsi',textAlign: TextAlign.center),
                      ),
                    )
                  ),
                  Positioned(
                    left: 39,
                    top: 4,
                    child: Align(
                      child: SizedBox(
                        width: 198,
                        height: 22,
                        child: Text('Two Way Cake - Luxcreme',textAlign: TextAlign.center),
                      ),
                    )
                  ),
                  Positioned(
                    left: 22.5,
                    top: 54,
                    child: Align(
                      child: SizedBox(
                        width: 241,
                        height: 101,
                        child: Text(
                          'Instantly mattify and set your face! It’sulated to transform the look of your skin with soft-focus powder which gives smoothing and imperfections covering effect. Enriched with ultra-soft particles with velvet matte finish. Leaves your complexion flawless and evens out your skin with the added benefit of UV protection.',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ),
                  Positioned(
                    left: 16.5,
                    top: 158,
                    child: Align(
                      child: SizedBox(
                        width: 91,
                        height: 15,
                        child: Text(
                          "Exp: 25/12/2025",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 178,
                    child: Align(
                      child: SizedBox(
                        width: 190,
                        height: 15,
                        child: Text(
                          "Tanggal Masuk Produk : 25/04/2023",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container()
          ],
        ),
      ),
    );
  }
}

