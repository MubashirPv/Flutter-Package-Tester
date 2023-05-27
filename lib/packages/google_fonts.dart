import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsSamples extends StatelessWidget {
  const GoogleFontsSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.start,
       
        children: [
           Text(
            style:GoogleFonts.sacramento(
              color: Colors.amberAccent,
              fontSize: 50,
            ),"this is scramento font style"),
          Text("fonts2"),
          Text("fonts2"),
          Text("fonts2"),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(style: TextStyle(color: Colors.black),
                "Back")),
        ],
      ),
    );
  }
}
