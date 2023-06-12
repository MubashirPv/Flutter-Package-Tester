import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextkit extends StatelessWidget {
  const AnimatedTextkit({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
    const colorizeTextStyle = TextStyle(
        fontSize: 40, fontFamily: 'Horizon', fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Kit'),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'FLUTTER PACKAGES',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    )
                  ],
                  isRepeatingAnimation: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
