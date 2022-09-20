import 'package:flutter/material.dart';

class HelloUserName extends StatelessWidget {
  const HelloUserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello,',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Talha Tahir',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.purple[200],
          ),
        ),
      ],
    );
  }
}