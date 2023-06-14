import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinkit extends StatelessWidget {
  const Spinkit({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> kits = [
      const SpinKitRotatingCircle(color: Colors.orange),
      const SpinKitRotatingPlain(color: Colors.blue),
      const SpinKitChasingDots(color: Colors.green),
      const SpinKitPumpingHeart(color: Colors.red),
      const SpinKitPulse(color: Colors.yellow),
      const SpinKitDoubleBounce(color: Colors.green),
      const SpinKitHourGlass(color: Color.fromARGB(255, 81, 4, 4)),
      const SpinKitPouringHourGlass(color: Color.fromARGB(255, 110, 89, 23)),
      const SpinKitPouringHourGlassRefined(color: Color.fromARGB(255, 18, 241, 185)),
      const SpinKitRipple(color: Color.fromARGB(255, 209, 18, 171)),
      const SpinKitDancingSquare(color: Color.fromARGB(255, 0, 0, 0)),
      const SpinKitWaveSpinner(color: Color.fromARGB(135, 89, 84, 215)),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Spinkit"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 46,
            childAspectRatio: 2,
          ),
          padding: const EdgeInsets.only(top: 32, bottom: 64),
          itemCount: kits.length,
          itemBuilder: (context, index) => kits[index],
        ),
      ),
    );
  }
}
