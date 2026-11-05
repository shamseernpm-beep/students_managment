import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_flutter/adapters.dart';

import 'models/student_model.dart';

import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(StudentAdapter());
  await Hive.openBox<Student>("students");

  runApp(Students());
}

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Student_Managmen",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
