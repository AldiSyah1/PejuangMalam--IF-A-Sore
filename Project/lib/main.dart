import 'package:aplikasi/screens/index_screen.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/screens/login_view.dart';
import 'package:aplikasi/screens/register_view.dart';
import 'package:aplikasi/screens/activation_view.dart';
import 'package:aplikasi/screens/menuitem/profile_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Sansita'),
    title: "Manajemen Stock Gudang",
    initialRoute: "/",
    routes: {
      "/" : (context) => const LoginPage(),
      RegisterPage.routeName : (context) => RegisterPage(),
      IndexScreen.routeName : (context) => const IndexScreen(),
      Activation.routeName : (context) => Activation(),
      ProfilePage.routeName : (context)=> const ProfilePage(),
    },
  ));
}