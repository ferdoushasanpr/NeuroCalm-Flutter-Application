import 'package:flutter/material.dart';
import 'package:neurocalm/screens/home.dart';
import 'package:neurocalm/screens/meditate.dart';
import 'package:neurocalm/screens/music.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  var _currentScreen = 0;
  final List screens = [HomeScreen(), MeditateScreen(), Music()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(142, 151, 253, 1),
        unselectedItemColor: Color.fromRGBO(160, 163, 177, 1),
        selectedLabelStyle: TextStyle(color: Color.fromRGBO(142, 151, 253, 1)),
        unselectedLabelStyle: TextStyle(
          color: Color.fromRGBO(160, 163, 177, 1),
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentScreen,
        onTap: (value) {
          setState(() {
            _currentScreen = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/icons/home-icon.png")),
                SizedBox(height: 8),
              ],
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/icons/moon-icon.png")),
                SizedBox(height: 8),
              ],
            ),
            label: "Sleep",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/icons/meditate-icon.png")),
                SizedBox(height: 8),
              ],
            ),
            label: "Meditate",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/icons/home-icon.png")),
                SizedBox(height: 8),
              ],
            ),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                ImageIcon(AssetImage("assets/icons/user-icon.png")),
                SizedBox(height: 8),
              ],
            ),
            label: "Ferdous",
          ),
        ],
      ),
      body: screens[_currentScreen],
    );
  }
}
