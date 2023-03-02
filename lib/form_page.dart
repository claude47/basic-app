import 'package:activity_four/students.dart';
import 'package:flutter/material.dart';


class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  var formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController bdayController = TextEditingController();
  TextEditingController courseController = TextEditingController();
  TextEditingController sectionController = TextEditingController();

  List<String> gender = <String>['Male', 'Female', 'Gender', 'Other'];
  String fgender = 'Gender';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        title: const Text("Fill up Form"),
      ),
      body: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              TextFormField(
                controller: idController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    hintText: "ID Number", labelText: "ID number",
                    border: OutlineInputBorder(
                borderSide: BorderSide(
                color: Colors.black38,
                )
          )
                ),
                validator: (value) {
                  return (value == "") ? "Please enter your ID Number" : null;
                },
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration:
                const InputDecoration(hintText: "Name", labelText: "Name",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black38,
                        )
                    )),
                validator: (value) {
                  return (value == "") ? "Please enter your name" : null;
                },
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: bdayController,
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                    hintText: "Birthday", labelText: "Birthdate",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black38,
                        )
                    ),),
                validator: (value) {
                  return (value == "") ? "Please enter your birthdate" : null;
                },
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: courseController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: "Course", labelText: "Course",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      )
                  ),),
                validator: (value) {
                  return (value == "") ? "Please enter your course" : null;
                },
              ),
              const SizedBox(height: 40),
              TextFormField(
                controller: sectionController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: "Year and Section", labelText: "Year and Section",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black38,
                      )
                  ),),
                validator: (value) {
                  return (value == "") ? "Please enter your year and section" : null;
                },
              ),
              const SizedBox(height: 40),
              DropdownButton<String>(
                  value: fgender,
                  items: gender.map<DropdownMenuItem<String>>(
                        (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      fgender = newValue!;
                    });
                  }),
              const SizedBox(height: 40),
              SizedBox(
                height: 40,
                child: ElevatedButton(onPressed: () {
                  var formValid = formKey.currentState!.validate();
                  if (formValid){
                    Navigator.pop(context, Students(
                      id: idController.text,
                      name: nameController.text,
                      birthday: bdayController.text,
                      course: courseController.text,
                      year: sectionController.text,
                      gender: fgender,
                    ));
                  }
                }, child: const Text("Submit")),
              ),
            ],
          )),
    );
  }
}
