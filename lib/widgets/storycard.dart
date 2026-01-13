import 'package:flutter/material.dart';

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
