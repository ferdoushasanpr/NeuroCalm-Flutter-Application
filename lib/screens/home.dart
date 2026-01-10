import 'package:flutter/material.dart';
import 'package:neurocalm/widgets/coursecard.dart';
import 'package:neurocalm/widgets/recommendcard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/silent-moon.png"),
            ),
            SizedBox(height: 30),
            Text(
              "Good Morning, Ferdous",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(63, 65, 78, 1),
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              "We Wish you have a good day",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Coursecard(
                    backgroundColor: Color.fromRGBO(142, 151, 253, 1),
                    imagePath: 'assets/images/basics-vector.png',
                    courseTitle: "Basics",
                    courseSubtitle: "COURSE",
                    courseDuration: "3-10 MIN",
                    buttonColor: Color.fromRGBO(235, 234, 236, 1),
                    buttonTextColor: Color.fromRGBO(63, 65, 78, 1),
                    textColor: Color.fromRGBO(254, 255, 254, 1),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Coursecard(
                    backgroundColor: Color.fromRGBO(255, 219, 157, 1),
                    imagePath: 'assets/images/relaxation-vector.png',
                    courseTitle: "Relaxation",
                    courseSubtitle: "MUSIC",
                    courseDuration: "3-10 MIN",
                    buttonColor: Color.fromRGBO(63, 65, 78, 1),
                    buttonTextColor: Color.fromRGBO(254, 255, 254, 1),
                    textColor: Color.fromRGBO(63, 65, 78, 1),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/daily-thought-vector.png'),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(63, 65, 78, 0.9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Daily Thought",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(235, 234, 236, 1),
                            ),
                          ),
                          Text(
                            "MEDITATION 3-10 MIN",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color.fromRGBO(235, 234, 236, 1),
                            ),
                          ),
                        ],
                      ),
                      Image.asset('assets/icons/play.png'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Recomended for you",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Recommendcard(
                    imagePath: 'assets/images/happiness.png',
                    courseTitle: "Happiness",
                    courseSubtitle: "COURSE",
                    courseDuration: "3-10 MIN",
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Recommendcard(
                    imagePath: 'assets/images/focus.png',
                    courseTitle: "Focus",
                    courseSubtitle: "MUSIC",
                    courseDuration: "3-10 MIN",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
