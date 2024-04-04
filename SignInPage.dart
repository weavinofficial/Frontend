import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.54, -0.84),
            end: Alignment(-0.54, 0.84),
            colors: [Color(0xFFE79796), Color(0xFFF5CEC7)],
          ),
        ),
        padding: const EdgeInsets.only(top: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: <Widget>[
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/yarn01.png',
                        width: 140, fit: BoxFit.fill),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              const Padding(
                padding: EdgeInsets.only(left: 32.0),
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'GmarketSansTTF',
                    fontSize: 32.0,
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
              const SizedBox(height: 40.0),
              Image.asset(
                'assets/images/yarn02.png',
                height: 100.0,
                width: 510.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.fromLTRB(32.0, 112.0, 32.0, 232.0),
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
                        fontFamily: 'Gmarket Sans TTF',
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
                        // forgot password 기능, 클릭스 관련 페이지로 이동
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
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFFE79796), Color(0xFFF5CEC7)],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
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
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          child: const Row(
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
