import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutter extends StatefulWidget {
   FontAwesomeFlutter({super.key});

  final List<Map<String, dynamic>> buttonIcons = [
  {'name': 'Gamepad', 'icon': FontAwesomeIcons.gamepad},
  {'name': 'Shoppingcart', 'icon': Icons.shopping_cart},
  {'name': 'Icon', 'icon': Icons.insert_emoticon_sharp},
  {'name': 'Facebook', 'icon': Icons.facebook},
  {'name': 'Bitcoin', 'icon': Icons.currency_bitcoin},
];

  @override
  State<FontAwesomeFlutter> createState() => _FontAwesomeFlutterState();
}

class _FontAwesomeFlutterState extends State<FontAwesomeFlutter> {
 late Map<String, dynamic> selectedIcon;

  @override
  void initState() {
    super.initState();
    selectedIcon = widget.buttonIcons[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Awesome Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<Map<String, dynamic>>(
              value: selectedIcon,
              onChanged: (value) {
                setState(() {
                  selectedIcon = value!;
                });
              },
              items: widget.buttonIcons.map((icon) {
                return DropdownMenuItem<Map<String, dynamic>>(
                  value: icon,
                  child: Row(
                    children: [
                      Icon(icon['icon']),
                      const SizedBox(width: 15.0),
                      Text(icon['name']),
                    ],
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16.0),
            Icon(selectedIcon['icon'], size: 100.0),
          ],
        ),
      ),
    );
  }
}






