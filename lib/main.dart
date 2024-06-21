import 'package:flutter/material.dart';
import 'package:frontend/pages/gpa_calculator_page.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/pages/post_like_page.dart';
import 'package:frontend/pages/start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: PostLikePage(),
      ),
    );
  }
}
