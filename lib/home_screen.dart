import 'package:flutter/material.dart';
import 'package:flutter_package_tester/packages/google_fonts.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Flutter Packages"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
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
                    icon:  Icon(Icons.person_search,size: 45),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GoogleFontsSamples()),
                      );
                    }),
                title: const Text("Google Fonts"),
                subtitle: const Text('A Flutter package to use fonts from fonts.google.com.'),
              ),
            ),
          );
        },
      ),
    );
  }
}
