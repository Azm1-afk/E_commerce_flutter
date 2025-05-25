import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black26),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16), // Padding for the whole screen
          child: Column(
            children: [
              const SizedBox(height: 25),
              Icon(Icons.apple, size: 90), // Apple icon
              const SizedBox(height: 15),
              // Heading with proper spacing and styling
              Text(
                'About Us',
                style: GoogleFonts.robotoSerif(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.3, // Optional: adds spacing between letters
                ),
              ),
              const SizedBox(height: 20), // Gap between heading and text
              // Text area with scrollable content
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(25), // Padding around the text
                  child: Text(
                    'Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs. Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs. Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs.',
                    textAlign: TextAlign.justify,
                    softWrap: true,
                    style: GoogleFonts.robotoSerif(
                      fontSize: 16, // Adjusted font size
                      height: 1.5,// Line height for better readability
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
