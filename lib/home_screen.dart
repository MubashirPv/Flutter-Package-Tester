import 'package:flutter/material.dart';

import 'models/list_package.dart';

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
          return testfuntioncard(name1,name1sub,route1);
        },
      ),
    );
  }
}
