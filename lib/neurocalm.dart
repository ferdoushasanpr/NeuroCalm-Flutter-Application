import 'package:flutter/material.dart';
import 'package:neurocalm/screens/login.dart';

class Neurocalm extends StatelessWidget {
  const Neurocalm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/welcome-page.png'),
          Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'We are what we do',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(63, 65, 78, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(48, 0, 48, 26),
                  child: Text(
                    'Thousand of people are usign silent moon for smalls meditation.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(63, 65, 78, 1),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(142, 151, 253, 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 48.0,
                      vertical: 18.0,
                    ),
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: Color.fromRGBO(246, 241, 251, 1)),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  child: Text(
                    "ALREADY HAVE AN ACCOUNT? LOG IN",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(161, 164, 178, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
