import 'package:flutter/material.dart';

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
