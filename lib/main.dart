import 'package:animation_homework/pages/homepage/home_view.dart';
import 'package:animation_homework/pages/secondpage/second_page.dart';
import 'package:animation_homework/pages/thirdpage/third_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ThirdPage(),
    );
  }
}
