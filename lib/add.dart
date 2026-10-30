// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({super.key});

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  final username = TextEditingController();
  final age = TextEditingController();
  final classs = TextEditingController();
  final address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "Add Student",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    CircleAvatar(maxRadius: 40, child: Icon(Icons.person)),
                    SizedBox(height: 20),
                    Text(
                      "Add profile Image",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Text("Name"),
              SizedBox(height: 7),
              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: "enter your name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Text("Age"),
              SizedBox(height: 7),
              TextField(
                controller: age,
                decoration: InputDecoration(
                  hintText: "enter your Age",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Text("Class"),
              SizedBox(height: 7),
              TextField(
                controller: classs,
                decoration: InputDecoration(
                  hintText: "enter your Class",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Text("Addrass"),
              SizedBox(height: 7),
              SizedBox(height: 7),
              TextField(
                controller: address,
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Enter your Addras",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Map<String, dynamic> student = {
                      'name': username.text,
                      'age': int.tryParse(age.text) ?? 0,
                      'class': int.tryParse(classs.text) ?? 0,
                      'address': address.text,
                    };
                    Navigator.pop(context, student);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Add Student"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
