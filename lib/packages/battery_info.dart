// import 'package:battery_plus/battery_plus.dart';
// import 'package:flutter/material.dart';

// var battery = Battery();

// int percentage = 0;

// getBatteryPecentage() async {
//   final level = await battery.batteryLevel;
//   percentage = level;
//  }

// class BatteryInfo extends StatefulWidget {
//   const BatteryInfo({super.key});
//   @override
//   State<BatteryInfo> createState() => _BatteryInfoState();
// }
// class _BatteryInfoState extends State<BatteryInfo> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Text("batteryInfohere $percentage"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // print( battery.batteryLevel.toString());
//                 debugPrint(percentage.toString());
//                 setState(() {
//                   percentage++;
//                 });
//               },
//               child: const Text("Batterylevel"),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: const Text("Back"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
