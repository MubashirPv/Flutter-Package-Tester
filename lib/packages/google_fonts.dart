import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsSamples extends StatefulWidget {
  const GoogleFontsSamples({super.key});

  @override
  State<GoogleFontsSamples> createState() => _GoogleFontsSamplesState();
}

class _GoogleFontsSamplesState extends State<GoogleFontsSamples> {
  String selectedFont = 'Roboto';

  final TextEditingController _textEditingController = TextEditingController();
  String inputText = '';
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Fonts Demo'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _textEditingController,
              onChanged: (text) {
                setState(() {
                  inputText = text;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Enter text',
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        inputText,
                        style: GoogleFonts.getFont(
                          selectedFont,
                          textStyle: const TextStyle(fontSize: 24.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton<String>(
              value: selectedFont,
              onChanged: (String? newValue) {
                setState(() {
                  selectedFont = newValue!;
                });
              },
              items: GoogleFonts.asMap().keys.map((String font) {
                return DropdownMenuItem<String>(
                  value: font,
                  child: Text(font),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}