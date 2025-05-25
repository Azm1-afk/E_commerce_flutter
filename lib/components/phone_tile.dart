import 'dart:math';

import 'package:flutter/material.dart';
import 'package:e_commerce_app/models/phone.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneTile extends StatelessWidget {
  Phone phone;

  PhoneTile({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, top: 5, bottom: 5),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 8),

          // model and storage of the phone
          Text(phone.name, style: GoogleFonts.robotoSerif()),

          const SizedBox(height: 3),

          Text(phone.storage, style: GoogleFonts.robotoSerif()),

          const SizedBox(height: 10),

          // image of the phone
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(phone.imagePath, height: 150),
          ),

          const SizedBox(height: 15),

          // Price of the phone
          Text('\$${phone.price}', style: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.bold
          ),),

          const SizedBox(height: 35),

          FilledButton(onPressed: () {
            // add to cart
          },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.black),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                elevation: WidgetStateProperty.all(5),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                  )
                )
              ),
              child: Icon(Icons.add)),
        ],
      ),
    );
  }
}
