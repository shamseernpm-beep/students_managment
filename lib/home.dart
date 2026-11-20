import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stuent_managment/add.dart';
import 'package:stuent_managment/details.dart';
import 'package:stuent_managment/models/student_model.dart';
import 'package:stuent_managment/services/student_service.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Box<Student> studentsBox = Hive.box<Student>("students");
  final StudentService studentService = StudentService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Students Managment",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight(700),
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.home, color: Colors.black)],
      ),
      body: ValueListenableBuilder(
        valueListenable: studentsBox.listenable(),
        builder: (context, box, child) {
          final students = studentService.getStudents();
          if (students.isEmpty) {
            return Center(child: Text("No Students Add Yet"));
          }
          return ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              final student = students[index];

              return Card(
                margin: EdgeInsets.all(10),

                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(student.name),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () async {
                          await studentService.deleteStudent(index);
                        },
                        icon: Icon(Icons.delete, color: Colors.red),
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(student: student),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddStudents()),
          );
        },
        child: Text("Add"),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(title: Text("Students Management")),

    //   body: ValueListenableBuilder(
    //     valueListenable: studentsBox.listenable(),
    //     builder: (context, box, child) {
    //       final students = box.values.toList();

    //       if (students.isEmpty) {
    //         return Center(child: Text("No Students Add Yet"));
    //       }

    //       return ListView.builder(
    //         itemCount: students.length,
    //         itemBuilder: (context, index) {
    //           final student = students[index];

    //           return Card(child: ListTile(title: Text(student.name)));
    //         },
    //       );
    //     },
    //   ),

    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => AddStudents()),
    //       );
    //     },
    //     child: Icon(Icons.add),
    //   ),
    // );
  }
}
