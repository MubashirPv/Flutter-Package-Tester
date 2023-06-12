import 'package:flutter/material.dart';
import 'package:flutter_package_tester/packages/animated_text_kit.dart';
import 'package:flutter_package_tester/packages/auto_size_text.dart';
import 'package:flutter_package_tester/packages/carousel_slider.dart';
import 'package:flutter_package_tester/packages/device_info.dart';
import 'package:flutter_package_tester/packages/geolocator.dart';
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
    "Geolocator",
    "Device info",
    "Auto Size Text",
    "Animated Text Kit",
    "Carousel Slider"
  ];
  final _packagesubtitle = [
    "A Flutter package to use fonts from fonts.google.com",
    "The Font Awesome Icon pack available as Flutter Icons",
    "Geolocation plugin for Flutter. This plugin provides a cross-platform (iOS, Android) API for generic location (GPS etc.) functions",
    'Get current device information from within the Flutter application',
    "Flutter widget that automatically resizes text to fit perfectly within its bounds",
    "A flutter package project which contains a collection of cool and beautiful text animations",
    "A carousel slider widget, support infinite scroll and custom child widget"
  ];
  final _packagescreens = [
    const GoogleFontsSamples(),
    FontAwesomeFlutter(),
    const GeoLocator(),
    const DeviceInfo(),
    const AutoSizeTextScreen(),
    const AnimatedTextkit(),
    const CarouselSliderPackage()
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
