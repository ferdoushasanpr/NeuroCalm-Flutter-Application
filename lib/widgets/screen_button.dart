import 'package:flutter/material.dart';

class ScreenButton extends StatelessWidget {
  const ScreenButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Color.fromRGBO(182, 183, 191, 1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 20, color: Colors.white),
        ),
      ),
    );
  }
}
