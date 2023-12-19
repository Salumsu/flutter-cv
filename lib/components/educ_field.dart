import 'package:flutter/material.dart';

class EducField extends StatelessWidget {
  final String label;
  final String schoolName;
  final String yearGraduated;
  final String? course;

  const EducField({
    super.key,
    required this.label,
    required this.schoolName,
    required this.yearGraduated,
    this.course,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Text(
              label, // Use the 'label' property here
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Text(
                schoolName,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        if (course != null &&
            course!.isNotEmpty) // Check if course is not null and not empty
          Row(
            children: [
              Text(
                course ?? '', // Use the 'label' property here
                style: const TextStyle(color: Colors.blueGrey),
              ),
            ],
          ),
        Row(
          children: [
            Text(
              'Year graduated: $yearGraduated', // Use the 'label' property here
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
