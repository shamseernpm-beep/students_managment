import 'package:flutter/material.dart';
import 'package:stuent_managment/home.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Student Details",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
