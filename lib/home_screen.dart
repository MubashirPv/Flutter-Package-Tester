import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                leading: const Text("data"),
                trailing: IconButton(
                    icon: const Icon(Icons.flutter_dash_outlined),
                    onPressed: () {}),
                title: const Text('Title'),
                subtitle: const Text('Description'),
              ),
            ),
          );
        },
      ),
    );
  }
}
