import 'package:flutter/material.dart';
import 'package:neurocalm/widgets/category_item.dart';
import 'package:neurocalm/widgets/mainfeaturedcard.dart';
import 'package:neurocalm/widgets/storycard.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF03174C);
    const secondaryBlue = Color(0xFF1B2C5B);
    const accentLavender = Color(0xFF8E97FD);

    return Container(
      decoration: BoxDecoration(color: primaryBlue),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Icon(Icons.dark_mode, color: Colors.white, size: 40),
              const SizedBox(height: 15),
              const Text(
                'Sleep Stories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Soothing bedtime stories to help you fall\ninto a deep and natural sleep',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 30),

              // Category Horizontal List
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
              const SizedBox(height: 20),

              // Featured Main Card (The Ocean Moon)
              const MainFeaturedCard(),

              const SizedBox(height: 20),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 0.85,
                children: const [
                  StoryCard(
                    title: 'Night Island',
                    duration: '45 MIN',
                    type: 'SLEEP MUSIC',
                    imageColor: Colors.blueAccent,
                  ),
                  StoryCard(
                    title: 'Sweet Sleep',
                    duration: '45 MIN',
                    type: 'SLEEP MUSIC',
                    imageColor: Colors.deepPurpleAccent,
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
