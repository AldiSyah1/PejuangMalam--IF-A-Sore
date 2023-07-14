import 'package:flutter/material.dart';
import 'package:aplikasi/constants.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:aplikasi/screens/login_view.dart';
import 'package:aplikasi/screens/menuitem/profile_view.dart';
import 'package:aplikasi/screens/menuitem/settings_view.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reports',
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
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ReportCard(
            itemName: 'Tepung Tapioka',
            companyName: 'CV Bumi Waras',
            status: 'Sold',
            stock: 200,
            totalStock: 350,
          ),
          ReportCard(
            itemName: 'Shampoo',
            companyName: 'Unilever',
            status: 'Sold',
            stock: 400,
            totalStock: 200,
          ),
          ReportCard(
            itemName: 'Saos Sambal',
            companyName: 'PT Heinz ABC Indonesia',
            status: 'Sold',
            stock: 560,
            totalStock: 300,
          ),
          ReportCard(
            itemName: 'Mie Goreng',
            companyName: 'PT Indofood Sukses Makmur Tbk',
            status: 'Sold',
            stock: 970,
            totalStock: 800,
          ),
        ],
      ),
    );
  }
}

class ReportCard extends StatelessWidget {
  final String itemName;
  final String companyName;
  final String status;
  final int stock;
  final int totalStock;

  const ReportCard({
    required this.itemName,
    required this.companyName,
    required this.status,
    required this.stock,
    required this.totalStock,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      shadowColor: Colors.grey,
      color: ColorPalette.hintColor,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                color: ColorPalette.primaryDarkColor,
              ),
            ),
            const SizedBox(height: 8.0),
            Text('Company: $companyName', style: const TextStyle(color: ColorPalette.primaryDarkColor),),
            const SizedBox(height: 8.0),
            Text('Status: $status', style: const TextStyle(color: ColorPalette.textColor),),
            const SizedBox(height: 8.0),
            Text('Stock: $stock Items', style: const TextStyle(color: ColorPalette.primaryDarkColor),),
            Text('Total Stock: $totalStock Items', style: const TextStyle(color: ColorPalette.primaryDarkColor),),
          ],
        ),
      ),
    );
  }
}
