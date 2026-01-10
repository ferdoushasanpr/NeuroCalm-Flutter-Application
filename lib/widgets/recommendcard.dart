import 'package:flutter/material.dart';

class Recommendcard extends StatelessWidget {
  const Recommendcard({
    super.key,
    required this.imagePath,
    required this.courseTitle,
    required this.courseSubtitle,
    required this.courseDuration,
  });

  final String imagePath;
  final String courseTitle;
  final String courseSubtitle;
  final String courseDuration;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            SizedBox(height: 10),
            Text(
              courseTitle,
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(63, 65, 78, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Text(
                  courseSubtitle,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromRGBO(161, 164, 178, 1),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  courseDuration,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color.fromRGBO(161, 164, 178, 1),
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
