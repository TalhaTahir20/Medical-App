import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(12)),
        child: const TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'How can we help you ?',
            prefixIcon: Icon(
              Icons.search,
            ),
          ),
        ),
      ),
    );
  }
}