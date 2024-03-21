import 'package:flutter/material.dart';
//import 'package:frontend/create_account.dart';
import 'package:frontend/log_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
