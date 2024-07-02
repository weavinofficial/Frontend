import 'package:flutter/material.dart';
import 'package:frontend/pages/account_created_page.dart';
import 'package:frontend/pages/choose_faculty_page.dart';
import 'package:frontend/pages/community_page.dart';
import 'package:frontend/pages/gpa_calculator_page.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/pages/message_list.dart';

import 'package:frontend/pages/my_page.dart';
import 'package:frontend/pages/post_like_page.dart';
import 'package:frontend/pages/upload_thread_page.dart';
import 'package:frontend/pages/welcome_page.dart';
import 'package:frontend/widgets/chat_app/chat_messages.dart';
import 'package:frontend/pages/start_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StartPage(),
      ),
    );
  }
}
