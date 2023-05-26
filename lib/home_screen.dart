import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Packages"),
      ),
      body: const Center(
        style:sldf
        child: Text('Flutter Package List',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
    );
  }
}
