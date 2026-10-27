import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(Student());
}

class Student extends StatelessWidget {
  const Student({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
