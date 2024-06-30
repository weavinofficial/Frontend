import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;

class InputButton extends StatefulWidget {
  const InputButton({super.key});

  @override
  State<InputButton> createState() {
    return _InputButtonState();
  }
}

//Input Button
class _InputButtonState extends State<InputButton> {
  bool _isValid1st = true;
  bool _isValid2nd = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 218,
        height: 62,
        decoration: ShapeDecoration(
          color: const Color(0xFFE79796),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(children: [
          const SizedBox(height: 10),
          const Row(
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
              SizedBox(width: 43),
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
          const SizedBox(height: 3),
          Row(
            children: [
              const SizedBox(width: 15),

              //Text field for module
              Container(
                width: 78,
                height: 22,
                decoration: ShapeDecoration(
                  color: Colors.white.withOpacity(0.75),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Stack(children: [
                  Positioned(
                    bottom: 3,
                    left: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.transparent,
                      child: Text(
                        _isValid1st ? '' : 'Invalid module',
                        style: const TextStyle(fontSize: 10, color: Colors.red),
                      ),
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.all(8), // Adjust padding as needed
                      child: TextField(
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: const InputDecoration(
                          // hintText: '',
                          border: InputBorder.none,
                          counterText: '',
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^[A-Z0-9]+$')),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _isValid1st =
                                RegExp(r'^[A-Z0-9]+$').hasMatch(value);
                          });
                        },
                        maxLength: 8,
                        maxLines: 1,
                      )),
                ]),
              ),

              //Text field for grade
              const SizedBox(width: 5),
              Container(
                  width: 58,
                  height: 22,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      bottom: 3,
                      left: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        color: Colors.transparent,
                        child: Text(
                          _isValid2nd ? '' : 'Invalid grade',
                          style:
                              const TextStyle(fontSize: 8, color: Colors.red),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextField(
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Noto Sans',
                            fontWeight: FontWeight.w700,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[A-Z0-9+-]+$')),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _isValid2nd =
                                  RegExp(r'^[A-Z0-9+-]+$').hasMatch(value);
                            });
                          },
                          maxLength: 2,
                          maxLines: 1,
                        )),
                  ])),

              //Add Button
              const SizedBox(width: 25),
              Container(
                width: 30,
                height: 21,
                padding: const EdgeInsets.all(5),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF5CEC7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
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
