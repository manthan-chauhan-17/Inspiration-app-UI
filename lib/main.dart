import 'package:flutter/material.dart';
import 'package:inspiration_app_ui/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inspiration App',
      home: Home(),
    );
  }
}
