import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

import 'login.dart';

void main() {
  Get.put<MyDrawerController>(MyDrawerController());
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogIn(),
    );
  }
}
