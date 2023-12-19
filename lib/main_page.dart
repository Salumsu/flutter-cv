import 'package:flutter/material.dart';
import 'package:cv2/Skills.dart';
import 'package:cv2/educational_background.dart';
import 'package:cv2/personal_info.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Curriculm Vitae',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(100),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                      )
                    ],
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/avatar.jpg',
                    ),
                    radius: 70.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Name:",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "Michael E. Miranda III",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const Text(
                "Position:",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              const Text(
                "SOFTWARE DEVELOPER",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                width: 20,
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.mail,
                      color: Colors.blue), // Replace with your desired icon
                  SizedBox(
                      width: 8.0), // Add some space between the icon and text
                  Text(
                    'hxhmichaelhxh@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const Row(
                children: [
                  Icon(Icons.call,
                      color: Colors.blue), // Replace with your desired icon
                  SizedBox(
                      width: 8.0), // Add some space between the icon and text
                  Text(
                    '09461925147',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PersonalInfo(),
                          ));
                        },
                        icon: const Icon(Icons.info, color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const EducationalBackground(),
                          ));
                        },
                        icon: const Icon(Icons.school, color: Colors.black)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Skills(),
                          ));
                        },
                        icon: const Icon(Icons.settings, color: Colors.black)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
