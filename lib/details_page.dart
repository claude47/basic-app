import 'package:activity_four/students.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class DetailsPage extends StatelessWidget {
  final Students details;
  const DetailsPage(this.details, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: const Text('PROFILE'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile()));
                }
            )
          ],
        ),

        body: Container(
          padding: const EdgeInsets.only(left: 15, top: 20, right:15),
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: const [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "CLAUDIO DARUCA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacific",
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.numbers),
                    title: Text('2020300852'),
                  ),
                  ListTile(
                    leading: Icon(Icons.calendar_month),
                    title: Text('January 21, 2001'),
                  ),
                  ListTile(
                    leading: Icon(Icons.bookmark_add_outlined),
                    title: Text('BSIT -3RD YEAR'),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_sharp),
                    title: Text('Male'),
                  ),
                ],
              ),

            ],
          ),
        )
    );
  }
}
