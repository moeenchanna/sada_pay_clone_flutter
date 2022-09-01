import 'package:flutter/material.dart';
import 'package:sadapay_ui/screen/Screens.dart';
import 'package:sadapay_ui/util/ColorResources.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),

    );
  }
}
