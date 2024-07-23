import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/pages/gpa_calculator_page.dart';
import 'package:frontend/pages/post_like_page.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
              const Color(0xffE79796),
              const Color.fromARGB(255, 196, 104, 103).withOpacity(0.0),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              height: 1500,
              child: Stack(
                children: [
                  // yarn background image
                  Positioned(
                    top: 20,
                    right: 0,
                    child: SizedBox(
                      width: width * 0.50,
                      child: Image.asset(
                        'assets/images/yarn01.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // settings button
                  Positioned(
                    right: 10,
                    top: 20,
                    child: IconButton(
                      icon: Image.asset(
                        'assets/images/settings.png',
                        width: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Positioned(
                    top: 220,
                    child: Container(
                      width: width,
                      height: 1500,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.75),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 80),
                          Container(
                            margin: const EdgeInsets.only(left: 42.0),
                            child: const Text(
                              'Anonymous Kitten',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'GmarketSans',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 42.0),
                            child: const Text(
                              'Computing',
                              style: TextStyle(
                                fontFamily: 'GmarketSans',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 42.0, top: 20.0, right: 42.0),
                            height: 113,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 177, 132),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 105,
                                  height: 105,
                                  margin: const EdgeInsets.only(left: 5.0),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Image.asset(
                                          'assets/images/calculator.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        left: 10,
                                        child: Container(
                                          width: 10,
                                          height: 10,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(
                                                255, 255, 177, 132),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(2, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 5,
                                        right: 5,
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(
                                                255, 255, 177, 132),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(2, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        left: 0,
                                        child: Container(
                                          width: 25,
                                          height: 25,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(
                                                255, 255, 177, 132),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(2, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 40,
                                        child: Container(
                                          width: 15,
                                          height: 15,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(
                                                255, 255, 177, 132),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(2, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color.fromARGB(
                                                255, 255, 177, 132),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 1,
                                                blurRadius: 3,
                                                offset: Offset(2, 2),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                    width:
                                        10), // Add some space between the box and the text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'GPA Calculator',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontFamily: 'GmarketSans',
                                          fontWeight: FontWeight.w600,
                                          shadows: [
                                            Shadow(
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 3.0,
                                              color:
                                                  Color.fromARGB(76, 0, 0, 0),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        'Try out our GPA calculator...',
                                        style: TextStyle(
                                          fontFamily: 'GmarketSans',
                                          fontSize: 10.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0, right: 20.0),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const GpaCalculatorApp(),
                                                ),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                side: const BorderSide(
                                                    color: Colors.white),
                                              ),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 255, 178, 132),
                                            ),
                                            child: const Text(
                                              'Get Started',
                                              style: TextStyle(
                                                fontFamily: 'GmarketSans',
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 42.0, top: 20.0),
                            child: const Text(
                              'Bookmarks',
                              style: TextStyle(
                                fontFamily: 'GmarketSans',
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0,
                                color: Color(0xffE79796), // Add this line
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          // Bookmarks card
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 42.0),
                              child: ListView.separated(
                                itemCount:
                                    5, // TODO: Replace with actual list length
                                separatorBuilder: (context, index) =>
                                    const Divider(color: Color(0xffE79796)),
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    splashColor: const Color.fromARGB(
                                        255, 152, 152, 152),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const PostLikePage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin:
                                          const EdgeInsets.only(bottom: 10.0),
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10.0,
                                                        vertical: 5.0),
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffE79796),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          'Tag ${index + 1}',
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  'GmarketSans',
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        const SizedBox(
                                                            width: 10.0),
                                                        Image.asset(
                                                            'assets/images/tag_icon.png',
                                                            color:
                                                                Colors.white),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 20.0),
                                                  Text(
                                                    'Post ${index + 1}',
                                                    style: const TextStyle(
                                                      fontFamily: 'GmarketSans',
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'Date ${index + 1}',
                                                style: const TextStyle(
                                                  fontFamily: 'GmarketSans',
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 10.0),
                                          Text(
                                            'Content ${index + 1}',
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontFamily: 'GmarketSans'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 160,
                    left: 36.0,
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Color.fromARGB(255, 210, 209, 209),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Container(
                            width: 15.0,
                            height: 15.0,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 260,
                    right: 36.0,
                    child: IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        // Handle button tap.
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
