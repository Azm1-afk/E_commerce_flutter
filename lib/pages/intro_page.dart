import 'package:e_commerce_app/pages/home_page.dart';
import 'package:e_commerce_app/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/images/apple.png', height: 75),
            const SizedBox(height: 65),

            const Text(
              'Think Different',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: const Text(
                'Designed to inspire. Built to perform. Powered by Apple.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1.2,
                  color: Colors.black54,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                borderRadius: BorderRadius.circular(
                  10.5,
                ), // for ripple clipping
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(10.5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    height: 50,
                    child: const Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
