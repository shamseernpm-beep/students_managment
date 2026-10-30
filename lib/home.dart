import 'package:flutter/material.dart';
import 'package:stuent_managment/add.dart';
import 'package:stuent_managment/details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> students = [
    {'name': 'riswan', 'age': 20, 'class': 12},
    {'name': 'riswan', 'age': 18, 'class': 9},
    {'name': 'riswan', 'age': 19, 'class': 5},
    {'name': 'riswan', 'age': 19, 'class': 8},
    {'name': 'riswan', 'age': 19, 'class': 10},
  ];
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
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];

                  return Card(
                    margin: EdgeInsets.all(10),

                    child: ListTile(
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text(
                        student['name'],
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        'age: ${student['age']}  .  class: ${student['class']}',
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Details()),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            FloatingActionButton(
              onPressed: () async {
                final newstudent = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddStudents()),
                );
                if (newstudent != null) {
                  setState(() {
                    students.add(newstudent);
                  });
                }
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
