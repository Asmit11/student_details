import 'package:flutter/material.dart';
import 'package:students_details/commonwidget/mytextformfield.dart';
import 'package:students_details/model/student_model.dart';

class StudentDetailsScreen extends StatefulWidget {
  const StudentDetailsScreen({super.key});

  @override
  State<StudentDetailsScreen> createState() => _StudentDetailsScreenState();
}

class _StudentDetailsScreenState extends State<StudentDetailsScreen> {
  String? fname;
  String? lname;
  String? address;
  String? result;

  StudentModel? studentModel;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        title: const Text('Student Details'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              MyTextFormField(
                  onChanged: (value) {
                    fname = value;
                  },
                  text: 'Enter First Name'),
              const SizedBox(
                height: 10,
              ),
              MyTextFormField(
                  onChanged: (value) {
                    lname = value;
                  },
                  text: 'Enter Last Name'),
              const SizedBox(
                height: 10,
              ),
              MyTextFormField(
                  onChanged: (value) {
                    address = value;
                  },
                  text: 'Enter your address'),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      {
                        studentModel = StudentModel(
                          fname: fname!,
                          lname: lname!,
                          address: address!,
                        );
                      }
                      result = studentModel!.save();
                    });
                  }
                },
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Student details',
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: Container(
                  height: 500,
                  width: double.infinity,
                  color: Colors.pink,
                  child: Text(
                    '$result',
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
