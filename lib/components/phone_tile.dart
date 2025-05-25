import 'package:flutter/material.dart';
import 'package:e_commerce_app/models/phone.dart';

class PhoneTile extends StatelessWidget {
  Phone phone;

  PhoneTile({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
      ),

      child: Column(
        children: [
          Text(phone.name),

          // image of the phone
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(phone.imagePath),
          ),

          // storage of phone
          Text(phone.storage),

          // Price of the phone
          Text(phone.price),
        ],
      ),
    );
  }
}
