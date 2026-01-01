import 'package:flutter/material.dart';

class Coursecard extends StatelessWidget {
  const Coursecard({
    super.key,
    required this.backgroundColor,
    required this.imagePath,
    required this.courseTitle,
    required this.courseSubtitle,
    required this.courseDuration,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.textColor,
  });

  final Color backgroundColor;
  final String imagePath;
  final String courseTitle;
  final String courseSubtitle;
  final String courseDuration;
  final Color buttonColor;
  final Color buttonTextColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: backgroundColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(imagePath, height: 70),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                courseTitle,
                style: TextStyle(
                  fontSize: 18,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                courseSubtitle,
                style: TextStyle(fontSize: 11, color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 24.0, 10.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    courseDuration,
                    style: TextStyle(fontSize: 11, color: textColor),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonColor,
                    ),
                    child: Text(
                      "START",
                      style: TextStyle(fontSize: 12, color: buttonTextColor),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
