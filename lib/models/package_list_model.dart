import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../packages/google_fonts.dart';
List<Card>packageList=[];
 final _packagetitle = [
    "Google Fonts",
  ];
  final _packagesubtitle = [
    "A Flutter package to use fonts from fonts.google.com"
  ];
  final _packagescreens = [
    const GoogleFontsSamples(),
  ];

Card testfuntion(test){
  var index;
  return Card(
            elevation: 30,
            shadowColor: Colors.grey,
            color: Colors.blue,
            margin: const EdgeInsets.all(10),
            child: SizedBox(
              width: 250,
              height: 100,
              child: ListTile(
                leading: Text(style: GoogleFonts.lato(), (index+1).toString()),
                trailing: IconButton(
                    icon:  Icon(Icons.forward_10_rounded,size: 45),
                    onPressed: () {
                      Navigator.push(
                        context as BuildContext,
                        MaterialPageRoute(builder: (context) => GoogleFontsSamples()),
                      );
                    }),
                title: const Text("Google Fonts"),
                subtitle: const Text('A Flutter package to use fonts from fonts.google.com.'),
              ),
            ),
          );
}
