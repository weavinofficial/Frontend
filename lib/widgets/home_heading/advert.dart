import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Advert extends StatelessWidget {
  const Advert({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with actual advertisement content
    return const Card(
        surfaceTintColor: Color.fromRGBO(0, 0, 0, 0),
        elevation: 3.0,
        margin: EdgeInsets.only(top: 10),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: SizedBox(
          width: 330,
          height: 60,
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Advertisement",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
