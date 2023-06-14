import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderPackage extends StatelessWidget {
  const CarouselSliderPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider'),
      ),
      body: Center(
        child: CarouselSlider(
          items: [1, 2, 3, 4, 5].map((e) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text('item $e'),
              ),
            );
          }).toList(),
          options: CarouselOptions(height: 300),
        ),
      ),
    );
  }
}
