import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../packages/google_fonts.dart';

String name1 = "1";
String name1sub = 'one';

String name2 = '2';
String name2sub = 'two';

final route1 = Navigator.push(
  context as BuildContext,
  MaterialPageRoute(builder: (context) => GoogleFontsSamples()),
);

List<Card> packageList = [testfuntioncard(name1,name1sub,route1),];

Card testfuntioncard(String n,String sub, final routeLocation) {
  return Card(
    elevation: 30,
    shadowColor: Colors.grey,
    color: Colors.blue,
    margin: const EdgeInsets.all(10),
    child: SizedBox(
      width: 250,
      height: 100,
      child: ListTile(
        leading: Text(style: GoogleFonts.lato(), "1"),
        trailing: IconButton(
            icon: Icon(Icons.person_search, size: 45),
            onPressed: () {
              route1;
            }),
        title:  Text(n),
        subtitle:
             Text(sub),
      ),
    ),
  );
}
