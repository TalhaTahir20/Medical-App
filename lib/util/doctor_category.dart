import 'package:flutter/material.dart';

class DoctorCategory extends StatelessWidget {
  final String doctorImage;
  final String rating;
  final String doctorName;
  final String doctorProfession;
  const DoctorCategory(
      {Key? key,
      required this.doctorImage,
      required this.rating,
      required this.doctorName,
      required this.doctorProfession})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: Container(
        height: 1000,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            // picture of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                doctorImage,
                height: 100,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // rating out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                ),
                Text(
                  rating,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),

            // doctor name
            Text(
              doctorName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),

            // doctor title
            Text(doctorProfession),
          ],
        ),
      ),
    );
  }
}
