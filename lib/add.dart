// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stuent_managment/home.dart';

import 'details.dart';

class AddStudents extends StatefulWidget {
  const AddStudents({super.key});

  @override
  State<AddStudents> createState() => _AddStudentsState();
}

class _AddStudentsState extends State<AddStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
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
                decoration: InputDecoration(
                  hintText: "enter your name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Text("Age"),
              SizedBox(height: 7),
              TextField(
                decoration: InputDecoration(
                  hintText: "enter your Age",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Text("Class"),
              SizedBox(height: 7),
              TextField(
                decoration: InputDecoration(
                  hintText: "enter your Class",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              Text("Email"),
              SizedBox(height: 7),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
