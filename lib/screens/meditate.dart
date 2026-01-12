import 'package:flutter/material.dart';
import 'package:neurocalm/widgets/category_item.dart';
import 'package:neurocalm/widgets/content_card.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            const Text(
              'Meditate',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(63, 65, 78, 1),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'we can learn how to recognize when our minds\nare doing their normal everyday acrobatics.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color.fromRGBO(161, 164, 178, 1),
                height: 1.4,
              ),
            ),
            const SizedBox(height: 30),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryItem(
                    label: 'All',
                    iconPath: "assets/icons/all-icon.png",
                    color: const Color(0xFF8E97FD),
                    isActive: true,
                  ),
                  CategoryItem(
                    label: 'My',
                    iconPath: "assets/icons/love-icon.png",
                    color: Colors.grey.shade400,
                    isActive: false,
                  ),
                  CategoryItem(
                    label: 'Anxious',
                    iconPath: "assets/icons/anxious-icon.png",
                    color: Colors.grey.shade400,
                    isActive: false,
                  ),
                  CategoryItem(
                    label: 'Sleep',
                    iconPath: "assets/icons/sleep-icon.png",
                    color: Colors.grey.shade400,
                    isActive: false,
                  ),
                  CategoryItem(
                    label: 'Kids',
                    iconPath: "assets/icons/kids-icon.png",
                    color: Colors.grey.shade400,
                    isActive: false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/daily-calm.png'),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(166, 241, 209, 181),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Daily Calm',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'APR 30 • PAUSE PRACTICE',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.play_circle_fill,
                        size: 45,
                        color: Color(0xFF3F414E),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ContentCard(
                        title: '7 Days of Calm',
                        height: 210,
                        imagePath: 'assets/images/scene-a.png',
                      ),
                      const SizedBox(height: 20),
                      ContentCard(
                        title: '',
                        height: 160,
                        imagePath: 'assets/images/scene-a.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    children: [
                      ContentCard(
                        title: 'Anxiet Release',
                        height: 160,
                        imagePath: 'assets/images/scene-b.png',
                      ),
                      const SizedBox(height: 20),
                      ContentCard(
                        title: '',
                        height: 210,
                        imagePath: 'assets/images/scene-b.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
