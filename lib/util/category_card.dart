// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;
  const CategoryCard({
    Key? key,
    required this.iconImagePath,
    required this.categoryName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
             Text(categoryName),
          ],
        ),
      ),
    );
  }
}
