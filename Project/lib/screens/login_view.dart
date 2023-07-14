// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:aplikasi/constants.dart';
import 'package:aplikasi/screens/register_view.dart';
import 'package:aplikasi/screens/index_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool check = false;
  bool visible = true;
  TextEditingController val1 = TextEditingController();
  TextEditingController val2 = TextEditingController();
  TextEditingController val3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    "assets/images/Image Logo App.png",
                    width: 123.0,
                    height: 165.0,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                      ),
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 48.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      Text(
                        "Untuk tetap terhubung dengan kami, silahkan masuk dengan akun anda",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        controller: val1,
                        decoration: const InputDecoration(
                          label: Text(
                            'Username',
                            style: TextStyle(
                                color: Color(0xFFECEFF1),
                                fontStyle: FontStyle.normal),
                          ),
                          icon: Icon(Icons.account_circle_outlined),
                          iconColor: Colors.white,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.underlineTextField,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 3.0,
                            ),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                        autofocus: false,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        controller: val2,
                        decoration: const InputDecoration(
                          label: Text(
                            'Email',
                            style: TextStyle(
                                color: Color(0xFFECEFF1),
                                fontStyle: FontStyle.normal),
                          ),
                          icon: Icon(Icons.alternate_email),
                          iconColor: Colors.white,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.underlineTextField,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 3.0,
                            ),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                        autofocus: false,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                      ),
                      TextFormField(
                        controller: val3,
                        obscureText: visible,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.visibility_outlined),
                          suffixIconColor: Colors.white,
                          label: Text(
                            'Password',
                            style: TextStyle(
                                color: Color(0xFFECEFF1),
                                fontStyle: FontStyle.normal),
                          ),
                          icon: Icon(Icons.password),
                          iconColor: Colors.white,
                          border: UnderlineInputBorder(),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorPalette.underlineTextField,
                              width: 1.5,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 3.0,
                            ),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                        autofocus: false,
                      ),
                      check
                          ? Text(
                              "Username & Password tidak boleh dikosongkan!",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            )
                          : Container(),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                      ),
                      InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: double.infinity,
                          child: Text('Login',
                              style:
                                  TextStyle(color: ColorPalette.primaryColor),
                              textAlign: TextAlign.center),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        onTap: () {
                          if (val1.text.length == 0 || val2.text.length == 0 || val3.text.length == 0) {
                            setState(() {
                              check = true;
                            });
                          } else {
                            setState(() {
                              check = false;
                              Navigator.pushNamed(
                                  context, IndexScreen.routeName);
                            });
                          }
                        },
                        autofocus: false,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                      ),
                      Text(
                        'or',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0),
                      ),
                      InkWell(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            width: double.infinity,
                            child: Text('Register',
                                style:
                                    TextStyle(color: ColorPalette.primaryColor),
                                textAlign: TextAlign.center),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(
                                context, RegisterPage.routeName);
                          })
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
