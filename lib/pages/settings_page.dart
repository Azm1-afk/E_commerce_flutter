import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('Settings Page')),

        appBar: AppBar(
          backgroundColor: CupertinoColors.systemGrey3,
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,


          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.gift),
              label: 'Wishlist',
            ),

            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
          ],
        )



    );
  }
}
