import 'package:flutter/material.dart';
import 'dart:async';

import 'package:frontend/pages/welcome_page.dart';

class AccountCreated extends StatefulWidget {
  const AccountCreated({super.key});

  @override
  State<AccountCreated> createState() {
    return _AccountCreatedState();
  }
}

class _AccountCreatedState extends State<AccountCreated> {
  bool pressed = false;
  @override
  void initState() {
    super.initState();

    // Set up the timer to navigate to the next page after a few seconds
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Image.asset(
              'assets/images/AccountCreatedBG.png',
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
