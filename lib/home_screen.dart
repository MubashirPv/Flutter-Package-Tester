import 'package:flutter/material.dart';
import 'package:flutter_package_tester/packages/device_info.dart';
// import 'package:flutter_package_tester/packages/battery_info.dart';
// import 'package:flutter_package_tester/packages/device_info.dart';
import 'package:flutter_package_tester/packages/google_fonts.dart';
import 'package:flutter_package_tester/packages/font_awesome_flutter.dart';

// import 'models/list_package.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _packagetitle = [
    "Google Fonts",
    "Font Awesome Flutter",
    // "Battery info",
     "Device info",
  ];
  final _packagesubtitle = [
    "A Flutter package to use fonts from fonts.google.com",
    "The Font Awesome Icon pack available as Flutter Icons",
    // "A Flutter plugin to access various information about the battery of the device the app is running on",
    'Get current device information from within the Flutter application',
  ];
  final _packagescreens = [
    const GoogleFontsSamples(),
    FontAwesomeFlutter(),
    // const BatteryInfo(),
     DeviceInfo()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Flutter Packages"),
      ),
      body: ListView.builder(
        itemCount: _packagetitle.length,
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
                // leading: const Icon(
                //   Icons.font_download_sharp,
                //   size: 45,
                // ),
                trailing: IconButton(
                    icon: const Icon(Icons.forward, size: 45),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => _packagescreens[index]),
                      );
                    }),
                title: Text(
                  _packagetitle[index],
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  _packagesubtitle[index],
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
