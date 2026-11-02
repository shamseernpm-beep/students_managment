import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:stuent_managment/add.dart';
import 'package:stuent_managment/details.dart';
import 'package:stuent_managment/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Box studentsBox;

  @override
  void initState() {
    super.initState();
    studentsBox = Hive.box("students");
  }

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
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: studentsBox.listenable(),
                builder: (context, box, child) {
                  final students = box.values.toList();

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
                          title: Text(student["name"].toString()),
                          trailing: Icon(Icons.arrow_forward_ios),
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
            ),
            FloatingActionButton(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddStudents()),
                );
              },
              child: Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
