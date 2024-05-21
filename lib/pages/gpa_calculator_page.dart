import 'package:flutter/material.dart';
import 'package:frontend/widgets/input_butten.dart';
// import 'package:flutter/rendering.dart';

//Stateful Widget class
class GpaCalculatorApp extends StatefulWidget {
  const GpaCalculatorApp({super.key});
  @override
  _GpaCalculatorAppState createState() => _GpaCalculatorAppState();
}

class _GpaCalculatorAppState extends State<GpaCalculatorApp> {
  //Boolean value for checking button is pressed or not
  bool isPositionedVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Apply the background gradient directly to this Scaffold

      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              //Container containing all the components
              Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.81, -0.59),
                      end: Alignment(-0.81, 0.59),
                      colors: [Color(0xFFF5CEC7), Color(0xFFE79796)],
                    ),
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/gpaCalculatorShils.png"),
                        fit: BoxFit.cover,
                        alignment: Alignment.topLeft),
                  ),

                  //Column containing all the widgets.
                  child: Column(
                    children: [
                      // Padding above icon button
                      SizedBox(height: constraints.maxHeight * 15 / 852),

                      //Backward Icon Butten
                      Row(
                        children: [
                          SizedBox(width: constraints.maxWidth * 15 / 393),
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      //Padding above record widget
                      SizedBox(height: constraints.maxHeight * 150 / 852),

                      //Current Record Widget
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
                              child: const Row(
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

                            //Module, Grade, Units, S/U Option
                            Container(
                              width: constraints.maxWidth * 333 / 393,
                              height: constraints.maxHeight * 205 / 852,
                              padding: const EdgeInsets.symmetric(vertical: 13),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Modules
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Module',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontFamily: 'Noto Sans',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),

                                              //Padding above first module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),

                                              //First Module
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //Padding above second module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),

                                              //Second Module
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //Third Module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //Fourth Module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //Fifth Module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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

                                        //Grade Column
                                        SizedBox(
                                            width: constraints.maxWidth *
                                                23 /
                                                393),
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'Grade',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0),
                                              ),

                                              //Grade of first modules
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        constraints.maxWidth *
                                                            5 /
                                                            393,
                                                    vertical:
                                                        constraints.maxHeight *
                                                            3 /
                                                            852),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //Grade of second module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        constraints.maxWidth *
                                                            5 /
                                                            393,
                                                    vertical:
                                                        constraints.maxHeight *
                                                            3 /
                                                            852),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //Grade of third module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        constraints.maxWidth *
                                                            5 /
                                                            393,
                                                    vertical:
                                                        constraints.maxHeight *
                                                            3 /
                                                            852),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),

                                              //Grade of fourth module
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        constraints.maxWidth *
                                                            5 /
                                                            393,
                                                    vertical:
                                                        constraints.maxHeight *
                                                            3 /
                                                            852),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),
                                                child: const Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  height:
                                                      constraints.maxHeight *
                                                          7 /
                                                          852),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        constraints.maxWidth *
                                                            5 /
                                                            393,
                                                    vertical:
                                                        constraints.maxHeight *
                                                            3 /
                                                            852),
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFF5CEC7),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                ),

                                                //Grade of fifth module
                                                child: const Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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

                                  //Units
                                  SizedBox(
                                      width: constraints.maxWidth * 40 / 393),
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'Units',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),

                                        //Unit of first module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFC6C09C),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //Units of second module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFC6C09C),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //Unit of third module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFC6C09C),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //Unit of fourth module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFC6C09C),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //Units of fifth module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                7 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFC6C09C),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                  //S/U Option
                                  SizedBox(
                                      width: constraints.maxWidth * 40 / 393),
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          'S/U Option',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'Noto Sans',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                          ),
                                        ),

                                        //S/U Option for first module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                6 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFFC98B),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //S/U Option for second module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                6 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFFC98B),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //S/U Option for third module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                6 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFFC98B),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //S/U Option for fourth module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                6 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFFC98B),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                                        //S/U Option for fifth module
                                        SizedBox(
                                            height: constraints.maxHeight *
                                                6 /
                                                852),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: constraints.maxWidth *
                                                  5 /
                                                  393,
                                              vertical: constraints.maxHeight *
                                                  3 /
                                                  852),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFFFC98B),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: const Column(
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

                      //GPA Calculator
                      SizedBox(height: constraints.maxHeight * 47 / 852),
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
                              SizedBox(
                                  height: constraints.maxHeight * 27 / 852),
                              SizedBox(
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const Text(
                                                        'Current GPA',
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

                                                      //Goal GPA
                                                      SizedBox(
                                                          height: constraints
                                                                  .maxHeight *
                                                              6 /
                                                              852),
                                                      const Text(
                                                        'Goal GPA',
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

                                                //Current GPA value
                                                SizedBox(
                                                    width:
                                                        constraints.maxWidth *
                                                            22 /
                                                            393),
                                                Container(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: constraints
                                                                    .maxWidth *
                                                                5 /
                                                                393,
                                                            vertical: constraints
                                                                    .maxHeight *
                                                                2 /
                                                                852),
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: const Color(
                                                              0xFFF5CEC7),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                        ),
                                                        child: const Column(
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
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Noto Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),

                                                      //Goal GPA value
                                                      SizedBox(
                                                          height: constraints
                                                                  .maxHeight *
                                                              6 /
                                                              852),
                                                      Container(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: constraints
                                                                    .maxWidth *
                                                                5 /
                                                                393,
                                                            vertical: constraints
                                                                    .maxHeight *
                                                                2 /
                                                                852),
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: const Color(
                                                              0xFFF5CEC7),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                        ),
                                                        child: const Column(
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
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Noto Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
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

                                          //Pre S/U
                                          SizedBox(
                                              width: constraints.maxWidth *
                                                  70 /
                                                  393),
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                const Text(
                                                  'Pre S/U',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),

                                                //Pre S/U (value)
                                                SizedBox(
                                                    width:
                                                        constraints.maxWidth *
                                                            22 /
                                                            393),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          constraints.maxWidth *
                                                              5 /
                                                              393,
                                                      vertical: constraints
                                                              .maxHeight *
                                                          2 /
                                                          852),
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFFFFC98B),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  child: const Column(
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
                                                        '4.13',
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

                                    //Num of A-/A/A+ needed(str)
                                    SizedBox(
                                        height:
                                            constraints.maxHeight * 20 / 852),
                                    Container(
                                      width: double.infinity,
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
                                                const Text(
                                                  '# of A- needed to maintain my Goal',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12,
                                                    fontFamily: 'Noto Sans',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0,
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        constraints.maxHeight *
                                                            10 /
                                                            852),
                                                const Text(
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

                                          //Num of A- needed(value)
                                          SizedBox(
                                              width: constraints.maxWidth *
                                                  70 /
                                                  393),
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
                                                      horizontal:
                                                          constraints.maxWidth *
                                                              5 /
                                                              393,
                                                      vertical: constraints
                                                              .maxHeight *
                                                          2 /
                                                          852),
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFFC6C09C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                  ),
                                                  child: const Column(
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
                                                        '3',
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

                                                //Num of A/A+ needed(value)
                                                SizedBox(
                                                    height:
                                                        constraints.maxHeight *
                                                            10 /
                                                            852),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          constraints.maxWidth *
                                                              5 /
                                                              393,
                                                      vertical: constraints
                                                              .maxHeight *
                                                          2 /
                                                          852),
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFFC6C09C),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                  ),
                                                  child: const Column(
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
                                                        '1',
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
                                  ],
                                ),
                              )
                            ],
                          ))
                    ],
                  )),

              //Add Module butten
              Container(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: Stack(children: [
                  Positioned(
                    left: constraints.maxWidth * 40 / 393,
                    top: constraints.maxHeight * 450 / 852,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFFC98B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: constraints.maxWidth * 40 / 393 - 7.5,
                      top: constraints.maxHeight * 450 / 852 - 8.5,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isPositionedVisible = !isPositionedVisible;
                          });
                        },
                        icon: const Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                      )),
                  isPositionedVisible
                      ? Positioned(
                          left: constraints.maxWidth * 40 / 393,
                          top: constraints.maxHeight * 450 / 852 + 30,
                          child: InputButton())
                      : const SizedBox()
                ]),
              )
            ],
          );
        },
      ),
    );
  }
}
