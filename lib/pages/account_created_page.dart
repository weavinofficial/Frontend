import 'package:flutter/material.dart';

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
