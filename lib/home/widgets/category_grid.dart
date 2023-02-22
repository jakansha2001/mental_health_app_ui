import 'package:flutter/material.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.category,
    required this.color,
  });

  final String category;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: color,
        ),
        child: Center(
            child: Text(
          category,
          style: const TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
