import 'package:cv2/components/educ_field.dart';
import 'package:flutter/material.dart';

class EducationalBackground extends StatelessWidget {
  const EducationalBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Educational Background"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              EducField(
                  label: "Elementary",
                  schoolName: "West Central Elementary School 1",
                  yearGraduated: "2014"),
              SizedBox(height: 20),
              EducField(
                  label: "Secondary",
                  schoolName: "Dagupan City National High School",
                  yearGraduated: "2020"),
              SizedBox(height: 20),
              EducField(
                  label: "College",
                  schoolName: "PhilCST",
                  yearGraduated: "2024",
                  course: "Bachelor of Science in Information Technology"),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
