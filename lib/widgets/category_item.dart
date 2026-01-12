import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.label,
    required this.iconPath,
    required this.color,
    required this.isActive,
  });

  final String label;
  final String iconPath;
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isActive ? color : Color.fromRGBO(160, 163, 177, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ImageIcon(AssetImage(iconPath), color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: isActive
                  ? Color.fromRGBO(63, 65, 78, 1)
                  : Color.fromRGBO(161, 164, 178, 1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
