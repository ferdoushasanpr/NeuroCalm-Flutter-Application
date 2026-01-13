import 'package:flutter/material.dart';

class SleepScreen extends StatelessWidget {
  const SleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryBlue = Color(0xFF03174C);
    const secondaryBlue = Color(0xFF1B2C5B);
    const accentLavender = Color(0xFF8E97FD);

    return Scaffold(
      backgroundColor: primaryBlue,
      body: SafeArea(
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
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(
                      icon: Icons.grid_view_rounded,
                      label: 'All',
                      isSelected: true,
                    ),
                    CategoryItem(icon: Icons.favorite_border, label: 'My'),
                    CategoryItem(
                      icon: Icons.sentiment_dissatisfied,
                      label: 'Anxious',
                    ),
                    CategoryItem(icon: Icons.nightlight_round, label: 'Sleep'),
                    CategoryItem(icon: Icons.child_care, label: 'Kids'),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Featured Main Card (The Ocean Moon)
              const MainFeaturedCard(),

              const SizedBox(height: 20),

              // Grid of Stories
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

// Sub-widget for the Category Icons
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xFF8E97FD)
                  : const Color(0xFF586894),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}

// Sub-widget for the Large Featured Card
class MainFeaturedCard extends StatelessWidget {
  const MainFeaturedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xFF5A68D8), Color(0xFF03174C)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 15,
            left: 15,
            child: Icon(Icons.lock, color: Colors.white70, size: 20),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'The Ocean Moon',
                  style: TextStyle(
                    color: Color(0xFFFFE59E),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Non-stop 8-hour mixes of our\nmost popular sleep audio',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text('START'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Sub-widget for the small grid items
class StoryCard extends StatelessWidget {
  final String title;
  final String duration;
  final String type;
  final Color imageColor;

  const StoryCard({
    super.key,
    required this.title,
    required this.duration,
    required this.type,
    required this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: imageColor,
              borderRadius: BorderRadius.circular(15),
            ),
            // In a real app, use Image.asset or Image.network here
            child: const Center(
              child: Icon(Icons.image, color: Colors.white24, size: 40),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '$duration • $type',
          style: const TextStyle(color: Colors.white54, fontSize: 11),
        ),
      ],
    );
  }
}
