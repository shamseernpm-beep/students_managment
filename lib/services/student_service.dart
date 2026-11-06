import 'package:hive_flutter/adapters.dart';
import 'package:stuent_managment/models/student_model.dart';

class StudentService {
  final Box<Student> studentBox = Hive.box<Student>("students");

  Future<void> addStudent(Student student) async {
    await studentBox.add(student);
  }

  List<Student> getStudents() {
    return studentBox.values.toList();
  }

  Future<void> updateStudent(int index, Student student) async {
    final key = studentBox.keyAt(index);
    await studentBox.put(key, student);
  }

  Future<void> deleteStudent(int index) async {
    await studentBox.deleteAt(index);
  }
}
