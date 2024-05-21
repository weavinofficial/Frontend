import 'package:flutter/material.dart';
import 'package:frontend/models/post_overview.dart';

class CategoryTag extends StatelessWidget {
  const CategoryTag({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.topRight,
        child: Card(
          elevation: 0,
          color: const Color.fromRGBO(231, 151, 150, 1),
          surfaceTintColor: const Color.fromRGBO(0, 0, 0, 0),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: SizedBox(
            width: 85,
            height: 24,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  formatCategory(category),
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                const SizedBox(width: 8),
                Image.asset(
                  'assets/images/tag_icon.png',
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String formatCategory(Category category) {
    switch (category) {
      case Category.daily:
        return 'Daily';
      case Category.humor:
        return 'Humor';
      case Category.tips:
        return 'Tips';
      default:
        return 'Default';
    }
  }
}
