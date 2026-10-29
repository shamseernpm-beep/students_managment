import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(Students());
}

class Students extends StatelessWidget {
  const Students({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Student_Managment",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
