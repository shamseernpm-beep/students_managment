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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    CircleAvatar(maxRadius: 40, child: Icon(Icons.person)),
                    SizedBox(height: 10),
                    Text(
                      "Riswan",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Divider(height: 2, color: Colors.black),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('Age'),
                  subtitle: Text("28"),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  leading: Icon(Icons.school),
                  title: Text("class"),
                  subtitle: Text("12"),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("Address"),
                  subtitle: Text("Malappuram,kerala"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
