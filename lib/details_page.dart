import 'package:activity_four/students.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Students details;
  const DetailsPage(this.details, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('PROFILE'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 15, top: 20, right:15),
          child: ListView(
            children: [
              Text(
                "${details.name}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Pacific",
                ),
              ),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(left: 80),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.numbers),
                      title: Text("${details.id}"),
                    ),
                    const SizedBox(height: 40,),
                    ListTile(
                      leading: Icon(Icons.calendar_month),
                      title: Text("${details.birthday}"),
                    ),
                    const SizedBox(height: 40,),
                    ListTile(
                      leading: Icon(Icons.bookmark_add_outlined),
                      title: Text("${details.year} & ${details.course}"),
                    ),
                    const SizedBox(height: 40,),
                    ListTile(
                      leading: Icon(Icons.person_sharp),
                      title: Text("${details.gender}"),
                    ),
                  ],
                ),
              ),

            ],
          ),
        )
    );
  }
}
