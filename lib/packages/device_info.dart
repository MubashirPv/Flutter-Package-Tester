import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

var webInformation;

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
getWebinfo() async {
  WebBrowserInfo webBrowserInfo = await deviceInfo.webBrowserInfo;
  var webInformation= webBrowserInfo;
}

var allinformation;

final deviceInfoPlugin = DeviceInfoPlugin();

getAllInfo() async {
  final deviceInfo = await deviceInfoPlugin.deviceInfo;
  final allInfo = deviceInfo.data;
  allinformation = allInfo;
}

class DeviceInfo extends StatefulWidget {
  const DeviceInfo({super.key});

  @override
  State<DeviceInfo> createState() => _DeviceInfoState();
}

class _DeviceInfoState extends State<DeviceInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(".oString()"),
          ElevatedButton(
              onPressed: () {
                print(allinformation.toString());
                print(webInformation.toString());

              },
              child: Text("hii"))
        ],
      ),
    );
  }
}
