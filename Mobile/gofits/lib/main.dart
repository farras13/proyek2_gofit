// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:gofits/widgets/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "RR"),
      home: SplashScreenPage(),
    );
    // return DevicePreview(
    //   builder: (context) {
    //     return MaterialApp(
    //       builder: DevicePreview.appBuilder,
    //       debugShowCheckedModeBanner: false,
    //       theme: ThemeData(fontFamily: "RR"),
    //       home: SplashScreenPage(),
    //     );
    //   },
    // );
  }
}
