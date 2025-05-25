import 'package:e_commerce_app/components/phone_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:e_commerce_app/models/phone.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 35,
              right: 35,
              bottom: 35,
            ),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(CupertinoIcons.search),
                hintText: 'Search',
                filled: true,
                fillColor: CupertinoColors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 5.0, bottom: 5),
            child: Text(
              "life's better with an Apple",
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),

          const SizedBox(height: 25),

          Text('Hot Picks 🔥', style: GoogleFonts.abel(fontSize: 25)),

          Container(
            decoration: BoxDecoration(
              // color: Colors.red
            ),
            height: 340,
            width: deviceWidth,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Phone phone = Phone(
                  name: 'iPhone 14',
                  price: '599',
                  storage: '256 GB',
                  imagePath: 'lib/images/ip14.png',
                );
                return PhoneTile(phone: phone);
              },
            ),
          ),

          Divider(
            color: Colors.black,
            thickness: 1,
            height: 20,
          )
        ],
      ),
    );
  }
}
