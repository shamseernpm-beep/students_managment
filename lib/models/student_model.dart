import 'package:hive_flutter/hive_flutter.dart';

part 'student_model.g.dart';

@HiveType(typeId: 0)
class Student {
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;

  @HiveField(2)
  String studentClass;

  @HiveField(3)
  String address;

  Student({
    required this.name,
    required this.age,
    required this.studentClass,
    required this.address,
  });
}
