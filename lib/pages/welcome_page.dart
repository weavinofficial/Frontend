import 'package:flutter/material.dart';
import 'package:frontend/pages/home_page.dart';
import 'package:frontend/pages/main_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: <Widget>[
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Image.asset(
                'assets/images/WelcomePageBG.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: constraints.maxWidth * 0.25,
              top: constraints.maxHeight * 0.8,
              child: SizedBox(
                width: 200,
                height: 45,
                child: OutlinedButton.icon(
                  label: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFE79796),
                  ),
                  icon: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: 'GmarketSansTTF',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE79796),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      pressed = !pressed;
                    });
                    //for testing
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                    );
                    //for testing
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 2, color: Color(0xFFE79796)),
                  ),
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
