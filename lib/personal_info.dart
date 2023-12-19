import 'package:flutter/material.dart';
import 'components/Field.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Information"),
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
                height: 30,
              ),
              Field(
                label: "Name",
                text: "Michael E. Miranda III",
              ),
              Field(
                label: "Age",
                text: "21 years old",
              ),
              Field(
                label: "Address",
                text: "Calmay, Dagupan City, Pangasinan",
              ),
              Field(
                label: "Place of Birth",
                text: "Dagupan City, Pangasinan",
              ),
              Field(
                label: "Sex",
                text: "Male",
              ),
              Field(
                label: "Citizenship",
                text: "Filipino",
              ),
              Field(
                label: "Civil Status",
                text: "Single",
              ),
              Field(
                label: "Religion",
                text: "Iglesia ni Cristo",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
