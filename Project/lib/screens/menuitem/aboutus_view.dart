import 'package:aplikasi/screens/menuitem/profile_view.dart';
import 'package:aplikasi/screens/menuitem/settings_view.dart';
import 'package:flutter/material.dart';

import '../login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const AboutUsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AboutUsPage extends StatefulWidget {
  static var routeName;

  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  List<Map<String, String>> users = [
    {
      "profile": "assets/images/aldi.png",
      "message": "Hi, My name is Aldi Syahputra\nI'm a developer of Warehouse Stock Management",
    },
    {
      "profile": "assets/images/novita.png",
      "message": "Hi, My name is Novita Adelin Br LumbanTobing\nI'm a developer of Warehouse Stock Management",
    },
    {
      "profile": "assets/images/gilbert.png",
      "message": "Hi, My name is Gilbert Stone T\nI'm a developer of Warehouse Stock Management",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: Colors.blueGrey,
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
                    MaterialPageRoute(
                      builder: (context)=> AboutUsPage()));
              } else if (value == 'item4') {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage()));
              }
            },
            icon: const Icon(Icons.more_vert),
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: Text(
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
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(users[index]["message"]!),
              leading: CircleAvatar(
                backgroundImage: AssetImage(users[index]["profile"]!),
                radius: 25,
              ),
            );
          }),
    );
  }
}