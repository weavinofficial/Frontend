import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  const InputButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 218,
        height: 62,
        decoration: ShapeDecoration(
          color: Color(0xFFE79796),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 18),
              Text(
                'Module',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(width: 33),
              Text(
                'Grade',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Noto Sans',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              )
            ],
          ),
          SizedBox(height: 3),
          Row(
            children: [
              const SizedBox(width: 18),
              Container(
                width: 58,
                height: 22,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.75),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                width: 58,
                height: 22,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.75),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Container(
                width: 25,
                height: 21,
                padding: const EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: Color(0xFFF5CEC7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ]));
  }
}
