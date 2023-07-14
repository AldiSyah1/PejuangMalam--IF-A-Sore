import 'package:aplikasi/constants.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/screens/login_view.dart';
import 'package:aplikasi/screens/menuitem/settings_view.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = "/profilePage";
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
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
        padding: EdgeInsets.only(left: 15,top: 20,right: 15),
        child: GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1)
                          )
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            'data:image/jpeg;base64,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'
                          )
                        )
                      ), 
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 7,
                            color: Colors.white
                          ),
                          color: Colors.blueGrey
                        ),
                        child: IconButton(
                          icon: Icon(Icons.camera_alt_rounded),
                          color: Colors.white,
                          onPressed: (){},
                          ),
                      )
                    ),
                  ],
                ),
              ),
              new Container(
                padding: new EdgeInsets.all(40.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: new Center(
                  child: new Column(
                    children: <Widget>[
                      ListTile(
                        leading: Text("Username"),
                        textColor: ColorPalette.primaryDarkColor,
                        trailing: Text("Jennie"),
                        tileColor: Color(0xFFEEEEEE),
                      ),
                      ListTile(
                        leading: Text("Email"),
                        textColor: ColorPalette.primaryDarkColor,
                        trailing: Text("jennie@gmail.com"),
                        tileColor: Color(0xFFEEEEEE),
                      ),
                      ListTile(
                        leading: Text("Phone"),
                        textColor: ColorPalette.primaryDarkColor,
                        trailing: Text("+62 12345 789"),
                        tileColor: Color(0xFFEEEEEE),
                      ),
                      ListTile(
                        leading: Text("Gender"),
                        textColor: ColorPalette.primaryDarkColor,
                        trailing: Text("Female"),
                        tileColor: Color(0xFFEEEEEE),
                      ),
                      ListTile(
                        leading: Text("Date Of Birth"),
                        textColor: ColorPalette.primaryDarkColor,
                        trailing: Text("16/01/1996"),
                        tileColor: Color(0xFFEEEEEE),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}