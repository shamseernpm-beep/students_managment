import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          "Students Managment",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight(700),
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
