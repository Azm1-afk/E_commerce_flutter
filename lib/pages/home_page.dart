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

  final List _pages = const [LandingPage(), WishlistPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTapChange,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),

      drawer: Drawer(
        child: Column(children: [SizedBox(height: 45), Icon(Icons.apple, size: 50,),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
            child: Divider(
              height: 20
            ),
          )
        ]),
      ),
    );
  }
}
