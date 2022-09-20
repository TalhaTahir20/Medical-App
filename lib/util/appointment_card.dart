// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final imageName;
  final specialist;
  final fieldImage;
  final drName;
  final time;
  const AppointmentCard({
    Key? key,
    required this.imageName,
    required this.specialist,
    required this.fieldImage,
    required this.drName,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(
                imageName,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              specialist,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  fieldImage,
                  height: 40,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  drName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              time,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
