import 'package:flutter/material.dart';
import 'package:frontend/create_account.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 245, 206, 199),
                  Color.fromARGB(255, 231, 151, 150),
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: constraints.maxHeight * 0.15),
                Row(
                  children: [
                    SizedBox(width: constraints.maxWidth * 0.08),
                    const Text(
                      'Begin\nWeavin\'!',
                      style: TextStyle(
                        fontFamily: 'GmarketSans',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 55,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: constraints.maxHeight * 0.012),
                SizedBox(
                  width: constraints.maxWidth,
                  child: Image.asset(
                    'assets/images/yarn02.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: constraints.maxHeight * 0.25),
                SizedBox(
                  width: constraints.maxWidth * 0.84,
                  height: constraints.maxHeight * 0.064,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: null,
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                          fontFamily: 'GmarketSans',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 227, 153, 151),
                          fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: SizedBox(
                    width: constraints.maxWidth * 0.84, // Adjust button width
                    height: constraints.maxHeight * 0.064,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.transparent),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateAccountPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'CREATE AN ACCOUNT',
                        style: TextStyle(
                            fontFamily: 'GmarketSans',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
