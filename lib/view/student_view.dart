import 'package:first_program/model/student_model.dart';
import 'package:flutter/material.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {
  final _formKey = GlobalKey<FormState>();
  final firstController = TextEditingController(text: "John");
  final secondController = TextEditingController(text: "Doe");

  String? city;
  final items = [
    const DropdownMenuItem(value: "Kathmandu", child: Text("Kathmandu")),
    const DropdownMenuItem(value: "Pokhara", child: Text("Pokhara")),
    const DropdownMenuItem(value: "Chitwan", child: Text("Chitwan")),
    const DropdownMenuItem(value: "Bhaktapur", child: Text("Bhaktapur")),
    const DropdownMenuItem(value: "Lalitpur", child: Text("Lalitpur")),
  ];

  List<StudentModel> students = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student View"),
        backgroundColor: const Color(0xFF191919),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: firstController,
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) =>
                          value == null || value.isEmpty ? "Please enter first name" : null,
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: secondController,
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) =>
                          value == null || value.isEmpty ? "Please enter last name" : null,
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField(
                      value: city,
                      icon: const Icon(Icons.arrow_downward),
                      items: items,
                      onChanged: (value) {
                        setState(() {
                          city = value;
                        });
                      },
                      decoration: const InputDecoration(
                        labelText: 'Select City',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) =>
                          value == null ? 'Please select a city' : null,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          StudentModel student = StudentModel(
                            fname: firstController.text,
                            lname: secondController.text,
                            city: city!,
                          );
                          setState(() {
                            students.add(student);
                          });
                        }
                      },
                      child: const Text("Add Student"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: students.isNotEmpty
                    ? ListView.builder(
                        itemCount: students.length,
                        itemBuilder: (context, index) {
                          final student = students[index];
                          return ListTile(
                            leading: const Icon(Icons.person),
                            title: Text('${student.fname} ${student.lname}'),
                            subtitle: Text(student.city),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  students.removeAt(index);
                                });
                              },
                            ),
                          );
                        },
                      )
                    : const Center(child: Text("No students added yet")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
