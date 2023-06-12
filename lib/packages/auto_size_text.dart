import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AutoSizeTextScreen extends StatefulWidget {
  const AutoSizeTextScreen({super.key});

  @override
  State<AutoSizeTextScreen> createState() => _AutoSizeTextScreenState();
}

class _AutoSizeTextScreenState extends State<AutoSizeTextScreen> {
  String _inputText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Size Text'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Enter text',
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              _inputText,
              style: const TextStyle(fontSize: 32.0),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            const Text(
              'Auto Size Text',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            AutoSizeText(
              _inputText,
              style: const TextStyle(fontSize: 32.0),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
