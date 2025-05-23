import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/wishlist_page.dart';
import 'package:e_commerce_app/pages/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onTapChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = const [LandingPage(), WishlistPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: CupertinoColors.systemGrey3),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,

        currentIndex: _selectedIndex,
        onTap: _onTapChange,

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
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: CupertinoColors.systemGrey2),
              child: Icon(Icons.apple, size: 50),
            ),

            SizedBox.square(dimension: 40),

            ListTile(
              // THIS IS BASICALLY THE MAIN THING
              leading: Icon(CupertinoIcons.settings_solid),
              title: Text('SETTINGS', style: TextStyle(letterSpacing: 1.5)),
            ),
          ],
        ),
      ),
    );
  }
}
