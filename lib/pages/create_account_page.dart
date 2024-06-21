import 'package:flutter/material.dart';
import 'package:frontend/pages/choose_faculty_page.dart';
import 'package:http/http.dart' as http;

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool _showPassword = true;
  bool _showConfirmPassword = true;
  final _emailController = TextEditingController(text: '@u.nus.edu');
  final _formKey = GlobalKey<FormState>();

  var _enteredName = '';
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredConfirmPassword = '';

  void _submit() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
    }
  }

  @override
  void initState() {
    super.initState();
    _emailController.selection =
        TextSelection.fromPosition(const TextPosition(offset: 0));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  // padding above iconbutton
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const SizedBox(width: 12),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 231, 151, 150),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: constraints.maxWidth * 0.07),
                      SizedBox(
                        width: constraints.maxWidth * 0.86,
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              // padding below iconbutton
                              SizedBox(height: constraints.maxHeight * 0.057),
                              const Row(
                                children: [
                                  Text(
                                    "Create Your\nAccount!",
                                    style: TextStyle(
                                        fontFamily: 'GmarketSans',
                                        color:
                                            Color.fromARGB(255, 231, 151, 150),
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold,
                                        height: 1.2),
                                  ),
                                ],
                              ),
                              //spacing between create_your_account and username
                              SizedBox(height: constraints.maxHeight * 0.05),
                              //USERNAME
                              const Row(
                                children: [
                                  Text(
                                    "Username",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'NotoSans',
                                      color: Color.fromARGB(255, 231, 151, 150),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 237, 6, 6),
                                        width: 0.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  label: const Text(
                                    'Type Here',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 141, 140, 140),
                                        fontSize: 15),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value.trim().length < 4 ||
                                      value.trim().length > 10) {
                                    return 'Your username must be between 4 and 10 characters.';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _enteredName = value!;
                                },
                              ),
                              const SizedBox(height: 15),

                              //E-MAIL
                              const Row(
                                children: [
                                  Text(
                                    "E-mail",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'NotoSans',
                                      color: Color.fromARGB(255, 231, 151, 150),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                validator: (value) {
                                  if (value == null ||
                                      value.trim().isEmpty ||
                                      !value.endsWith('@u.nus.edu')) {
                                    return 'Enter a valid email address.';
                                  }
                                  return null;
                                },
                                onTap: () {
                                  if (_emailController.text == '@u.nus.edu') {
                                    _emailController.selection =
                                        TextSelection.fromPosition(
                                      const TextPosition(offset: 0),
                                    );
                                  }
                                },
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  label: const Text(
                                    'Type Here',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 141, 140, 140),
                                        fontSize: 15),
                                  ),
                                ),
                                onSaved: (value) {
                                  _enteredEmail = value!;
                                },
                              ),
                              const SizedBox(height: 15),

                              //PASSWORD
                              const Row(
                                children: [
                                  Text(
                                    "Password",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'NotoSans',
                                      color: Color.fromARGB(255, 231, 151, 150),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _showPassword = !_showPassword;
                                      });
                                    },
                                    icon: Icon(
                                      _showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color.fromARGB(
                                          255, 184, 183, 183),
                                      size: 17,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(16),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  label: const Text(
                                    'Type Here',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 141, 140, 140),
                                        fontSize: 15),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value.trim().length < 6 ||
                                      value.trim().length > 15) {
                                    return 'Your password must be between 6 and 15 characters.';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _enteredPassword = value!;
                                },
                              ),
                              const SizedBox(height: 15),

                              //CONFIRM PASSWORD
                              const Row(
                                children: [
                                  Text(
                                    "Confirm Password",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontFamily: 'NotoSans',
                                      color: Color.fromARGB(255, 231, 151, 150),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 9),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _showConfirmPassword =
                                            !_showConfirmPassword;
                                      });
                                    },
                                    icon: Icon(
                                      _showConfirmPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: const Color.fromARGB(
                                          255, 184, 183, 183),
                                      size: 17,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(16),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  label: const Text(
                                    'Type Here',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 141, 140, 140),
                                        fontSize: 15),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value.trim().length < 6 ||
                                      value.trim().length > 15) {
                                    return 'Your password must be between 6 and 15 characters.';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _enteredConfirmPassword = value!;
                                  if (_enteredConfirmPassword !=
                                      _enteredPassword) {
                                    // send error message
                                  }
                                },
                              ),
                              const SizedBox(height: 40),
                              Row(
                                children: [
                                  // Padding before Next button
                                  SizedBox(width: constraints.maxWidth * 0.47),
                                  SizedBox(
                                    width: 140,
                                    height: 45,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 115,
                                          height: 38,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            shadows: const [
                                              BoxShadow(
                                                color: Color(0x3F000000),
                                                blurRadius: 4,
                                                offset: Offset(0, 4),
                                                spreadRadius: 0,
                                              )
                                            ],
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color.fromARGB(
                                                    255, 231, 151, 150),
                                                Color.fromARGB(
                                                    255, 245, 206, 199),
                                              ],
                                            ),
                                          ),
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      const FacultyPage(),
                                                ),
                                              );
                                            }, // navigate to next page
                                            style: ButtonStyle(
                                              shadowColor:
                                                  const MaterialStatePropertyAll(
                                                      Colors.transparent),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                          Color>(
                                                      Colors.transparent),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      // Round corners
                                                      BorderRadius.circular(
                                                          30.0),
                                                ),
                                              ),
                                            ),
                                            child: const SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Next",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: 'GmarketSans',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  // Spacing between Next and >
                                                  SizedBox(width: 12),
                                                  Icon(
                                                    Icons
                                                        .arrow_forward_ios_rounded,
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
