import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.81, -0.59),
                end: Alignment(-0.81, 0.59),
                colors: [Color(0xFFF5CEC7), Color(0xFFE79796)],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      'assets/images/String_1.png',
                      width: 150,
                      height: 100,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GmarketSansTTF',
                        fontSize: 42.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Please sign in to continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'GmarketSansTTF',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Image.asset(
                    'assets/images/String_2.png',
                    height: 100.0,
                    width: 510.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 60),
                  Container(
                    padding: const EdgeInsets.fromLTRB(32.0, 64.0, 32.0, 64.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'E-mail',
                          style: TextStyle(
                            color: Color(0xFFE79796),
                            fontFamily: 'GmarketSansTTF',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Type Here',
                            hintStyle: const TextStyle(
                              color: Color(0xFF939393),
                              fontFamily: 'Noto Sans',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                        const SizedBox(height: 24.0),
                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xFFE79796),
                            fontFamily: 'GmarketSansTTF',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Type Here',
                            hintStyle: const TextStyle(
                              color: Color(0xFF939393),
                              fontFamily: 'Noto Sans',
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                            ),
                            border: InputBorder.none,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey[300]!,
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          color: Colors.grey[300],
                        ),
                        const SizedBox(height: 16.0),
                        GestureDetector(
                          onTap: () {
                            // forgot password 기능, 클릭시 관련 페이지로 이동
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xFF979797),
                              fontFamily: 'Noto Sans',
                              fontSize: 12.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        GestureDetector(
                          onTap: () {
                            // 클릭시 비밀번호와 이메일이 일치하면 true return -> 다음 페이지로 redirect, 아닐시 false return -> 태두리색 빨간색으로 바뀜
                          },
                          child: Expanded(
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 150.0,
                                height: 45.0,
                                margin:
                                    const EdgeInsets.only(top: 5.0, right: 5.0),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment(0.81, -0.59),
                                    end: Alignment(-0.81, 0.59),
                                    colors: [
                                      Color(0xFFF5CEC7),
                                      Color(0xFFE79796)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(30.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Color.fromRGBO(198, 192, 156, 0.8),
                                      blurRadius: 4.0,
                                      spreadRadius: 0.4,
                                    ),
                                  ],
                                ),
                                child: ElevatedButton(
                                  onPressed: () {}, // 다음 페이지로 이동
                                  style: ButtonStyle(
                                    shadowColor: const MaterialStatePropertyAll(
                                        Colors.transparent),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.transparent),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "Sign-In",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'GmarketSans',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
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
          ),
          const Positioned(
            top: 24.0,
            left: 18.0,
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

