import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GpaCalculatorApp extends StatelessWidget {
  const GpaCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Apply the background gradient directly to this Scaffold

      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.81, -0.59),
                end: Alignment(-0.81, 0.59),
                colors: [Color(0xFFF5CEC7), Color(0xFFE79796)],
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/gpaCalculatorShil2.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topLeft),
              // DecorationImage(
              //   image: AssetImage("assets/images/gpaCalculatorShil1.png"),
              //   fit: BoxFit.none,
              //   alignment:
              // ),
            ),
            child: Column(
              children: [
                // Padding above icon button
                SizedBox(height: constraints.maxHeight * 0.0463),
                Row(
                  children: [
                    SizedBox(width: constraints.maxWidth * 0.0814),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: constraints.maxWidth * 0.03),
                Row(
                  children: [
                    SizedBox(width: constraints.maxWidth * 0.318),
                    Text(
                      'GPA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.0814,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: constraints.maxWidth * 0.384),
                    Text(
                      'Calculator',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: constraints.maxWidth * 0.056,
                        fontFamily: 'Gmarket Sans TTF',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: constraints.maxHeight * 47 / 852),
                Container(
                  width: constraints.maxWidth * 335 / 393,
                  height: constraints.maxHeight * 262 / 852,
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.75),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: constraints.maxWidth * 333 / 393,
                        height: constraints.maxHeight * 40 / 852,
                        padding: EdgeInsets.only(
                            top: constraints.maxHeight * 10 / 852,
                            left: constraints.maxWidth * 8 / 393,
                            right: constraints.maxWidth * 8 / 393),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Current Records',
                              style: TextStyle(
                                color: Color(0xFFE79796),
                                fontSize: 16,
                                fontFamily: 'Gmarket Sans TTF',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: constraints.maxWidth * 333 / 393,
                        height: constraints.maxHeight * 205 / 852,
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
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
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'CS1010S',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'HSA1000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'DSA1101',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'HSS1000',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: const EdgeInsets.all(3),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'ST2131',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      width: constraints.maxWidth * 23 / 393),
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Grade',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'A-',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'A',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 7),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'A',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'B+',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFF5CEC7),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'C',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: constraints.maxWidth * 40 / 393),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Units',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 7 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC6C09C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 7 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC6C09C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 7 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC6C09C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 7 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC6C09C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 7 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFC6C09C),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: constraints.maxWidth * 40 / 393),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'S/U Option',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Noto Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 6 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFC98B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'None',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 6 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFC98B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'None',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 6 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFC98B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'None',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 6 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFC98B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'S/U',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                      height: constraints.maxHeight * 6 / 852),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 3 / 852),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFFFFC98B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'N/A',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(height: constraints.maxHeight * 47 / 852),



                //GPA part
                Container(
                    width: constraints.maxWidth * 335 / 393,
                    height: constraints.maxHeight * 177 / 852,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.75),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: constraints.maxHeight * 27 / 852),
                        Container(
                          width: constraints.maxWidth * 286 / 393,
                          height: constraints.maxHeight * 124 / 852,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Current GPA',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                SizedBox(height: constraints.maxHeight * 6 / 852),
                                                Text(
                                                  'Goal GPA',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: constraints.maxWidth * 22 / 393),
                                          Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 2 / 852),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFF5CEC7),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '4.10',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'Noto Sans',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: constraints.maxHeight * 6 / 852),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 2 / 852),
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFFF5CEC7),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '4.5',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily:
                                                              'Noto Sans',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: constraints.maxWidth * 54 / 393),
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Pre S/U',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                          SizedBox(width: constraints.maxWidth * 22 / 393),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 2 / 852),
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFFFC98B),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '4.13',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: constraints.maxHeight * 20 / 852),
                              Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '# of A- needed to maintain my Goal',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                          SizedBox(height: constraints.maxHeight * 10 / 852),
                                          Text(
                                            '# of A/A+ needed to maintain my Goal',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontFamily: 'Noto Sans',
                                              fontWeight: FontWeight.w700,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: constraints.maxWidth * 39 / 393),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 2 / 852),
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFC6C09C),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '3',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: constraints.maxHeight * 10 / 852),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth * 5 / 393, 
                                              vertical: constraints.maxHeight * 2 / 852),
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFC6C09C),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  '1',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}

// // class CourseInputList extends StatefulWidget {
// //   @override
// //   _CourseInputListState createState() => _CourseInputListState();
// // }

// // class _CourseInputListState extends State<CourseInputList> {
// //   List<CourseInput> courses = [];

// //   void addCourse() {
// //     setState(() {
// //       courses.add(CourseInput());
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         // Iterate through courses list and call build method of each CourseInput
// //         for (CourseInput course in courses) course.build(context),
// //         ElevatedButton(
// //           onPressed: addCourse,
// //           child: Text('Add Course'),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // class CourseInput extends StatefulWidget {
// //   @override
// //   _CourseInputState createState() => _CourseInputState();
// // }

// // class _CourseInputState extends State<CourseInput> {
// //   final courseNameController = TextEditingController();
// //   final gradeController = TextEditingController();
// //   final creditsController = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: EdgeInsets.all(8.0),
// //       child: Column(
// //         children: [
// //           TextField(
// //             controller: courseNameController,
// //             decoration: InputDecoration(labelText: 'Course Name'),
// //           ),
// //           Row(
// //             children: [
// //               DropdownButton<String>(
// //                 // Implement dropdown for letter grades
// //                 items: [
// //                   DropdownMenuItem(value: 'A', child: Text('A')),
// //                   // ... other grades
// //                 ],
// //                 onChanged: (value) => setState(() => gradeController.text = value!),
// //               ),
// //               SizedBox(width: 10.0),
// //               TextField(
// //                 controller: creditsController,
// //                 keyboardType: TextInputType.number,
// //                 decoration: InputDecoration(labelText: 'Credits'),
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
