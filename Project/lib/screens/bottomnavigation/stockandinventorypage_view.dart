import 'package:flutter/material.dart';
import 'package:aplikasi/constants.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:aplikasi/screens/login_view.dart';
import 'package:aplikasi/screens/menuitem/profile_view.dart';
import 'package:aplikasi/screens/menuitem/settings_view.dart';

class StockandInventoryPage extends StatelessWidget {
  const StockandInventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stock and Inventory',
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
              const PopupMenuItem(
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
        children: [
          const SizedBox(height: 5),
          const StockItemCard(
            itemName: 'Tepung Tapioka',
            quantity: 350,
            productCode: '211111',
          ),
          const StockItemCard(
            itemName: 'Shampoo',
            quantity: 200,
            productCode: '212222',
          ),
          const StockItemCard(
            itemName: 'Saos Sambal',
            quantity: 300,
            productCode: '213333',
          ),
          const StockItemCard(
            itemName: 'Mie Goreng',
            quantity: 800,
            productCode: '214444',
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}

class StockItemCard extends StatelessWidget {
  final String itemName;
  final int quantity;
  final String productCode;

  const StockItemCard({
    required this.itemName,
    required this.quantity,
    required this.productCode,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      elevation: 4,
      color: ColorPalette.hintColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(10)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              itemName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: ColorPalette.primaryDarkColor
              ),
            ),
            const SizedBox(height: 8),
            Text('Quantity: $quantity Items', style: const TextStyle(color: ColorPalette.primaryDarkColor),),
            Text('Product Code: $productCode', style: const TextStyle(color: ColorPalette.textColor),),
          ],
        ),
      ),
    );
  }
}
