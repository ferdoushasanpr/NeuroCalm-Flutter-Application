import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/images/login-page-vector.png'),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromRGBO(161, 164, 178, 1),
                          ),
                        ),
                        child: const Icon(Icons.arrow_back, size: 20),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    "Create your account.",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(63, 65, 78, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 48),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(117, 131, 202, 1),
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      minimumSize: const Size(double.infinity, 0),
                    ),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/facebook.png",
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
                    label: Text(
                      "CONTINUE WITH FACEBOOK",
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton.icon(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      minimumSize: const Size(double.infinity, 0),
                      side: BorderSide(color: Color.fromRGBO(161, 164, 178, 1)),
                    ),
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/icons/google.png",
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
                    label: Text(
                      "CONTINUE WITH GOOGLE",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(161, 164, 178, 1),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "OR SIGN UP WITH EMAIL",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(161, 164, 178, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            filled: true,
                            fillColor: Color.fromRGBO(242, 243, 247, 1),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(161, 164, 178, 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Email address",
                            filled: true,
                            fillColor: Color.fromRGBO(242, 243, 247, 1),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(161, 164, 178, 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            filled: true,
                            fillColor: Color.fromRGBO(242, 243, 247, 1),
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(161, 164, 178, 1),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "I have read the Privacy Policy",
                              style: TextStyle(
                                color: Color.fromRGBO(161, 164, 178, 1),
                              ),
                            ),
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value ?? false;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return SignupScreen();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(142, 151, 253, 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 48.0,
                        vertical: 18.0,
                      ),
                      child: Text(
                        'GET STARTED',
                        style: TextStyle(
                          color: Color.fromRGBO(246, 241, 251, 1),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
