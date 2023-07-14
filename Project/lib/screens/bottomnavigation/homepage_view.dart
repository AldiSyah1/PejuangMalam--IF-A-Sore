import 'package:flutter/material.dart';
import 'package:aplikasi/constants.dart';
import 'package:aplikasi/screens/menuitem/profile_view.dart';
import 'package:aplikasi/screens/menuitem/settings_view.dart';
import 'package:aplikasi/screens/login_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = "/homePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: ColorPalette.primaryColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'item1') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              }
              else if (value == 'item2') {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const SettingsPage()));
                
              }
              else if (value == 'item3') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage()
                  )
                );
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
              PopupMenuItem(
                child: Text(
                  'Settings',
                  style: TextStyle(color: Color.fromARGB(251, 91, 94, 95)),
                ),
                value: 'item2',
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Color.fromARGB(251, 91, 94, 95)),
                ),
                value: 'item3',
              ),
              //tambahkan menu disini
            ],
          )
        ],
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 20.0),
                  _imageSlider(),
                  const SizedBox(height: 30.0),
                  _imageMakanan(),
                  const SizedBox(height: 30.0),
                  _imageKosmetik(),
                  const SizedBox(height: 30.0),
                  _imageStationary(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imageSlider() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        'assets/images/Image Sliders.png',
        width: 298,
        height: 109,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _imageMakanan() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/Image Makanan.png',
            width: 112,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Center(
          child: Container(
            width: 150,
            child: const Text(
              'Data Kategori Makanan Pokok',
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                  fontSize: 18.0, color: Color.fromARGB(251, 91, 94, 95)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _imageKosmetik() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/Image Kosmetik.png',
            width: 112,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Center(
          child: Container(
            width: 150,
            child: const Text(
              'Data Kategori Skin Care & Kosmetik',
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                  fontSize: 18.0, color: Color.fromARGB(251, 91, 94, 95)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _imageStationary() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/Image Stationary.png',
            width: 112,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Center(
          child: Container(
            width: 150,
            child: const Text(
              'Data Kategori Makanan Pokok',
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                  fontSize: 18.0, color: Color.fromARGB(251, 91, 94, 95)),
            ),
          ),
        ),
      ],
    );
  }
}
