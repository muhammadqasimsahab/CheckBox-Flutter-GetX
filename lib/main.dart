import 'package:checkbox/print%20radio%20value/print_radio_value.dart';
import 'package:checkbox/work/work.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PrintRadioValue(),
    );
  }
}
