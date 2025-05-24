import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black26),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.apple, size: 90),
            SizedBox(height: 25),
            Text(
              'About Us',
              style: GoogleFonts.robotoSerif(
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs.Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs.Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs.Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs.Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs.Apple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by JobsApple Inc. is an American multinational technology company headquartered in Cupertino, California. It was founded on April 1, 1976, by Steve Jobs, Steve Wozniak, and Ronald Wayne. The company began with the launch of the Apple I, a hand-built personal computer designed by Wozniak and marketed by Jobs',
                  softWrap: true,
                  style: GoogleFonts.robotoSerif(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
