import 'person.dart';
import 'subjects.dart';

class Student extends Person {
  Map<Subject, double> marks;

  Student({
    required String fullName,
    required int age,
    required bool isMarried,
    required this.marks,
  }) : super(fullName: fullName, age: age, isMarried: isMarried);

  void showMarks() {
    print('Student: $fullName');
    for (var entry in marks.entries) {
      print('${entry.key}: ${entry.value}');
    }
  }

  double calculateAverage() {
    double sum = 0;
    for (var mark in marks.values) {
      sum += mark;
    }
    return marks.isEmpty ? 0 : sum / marks.length;
  }

  @override
  void introduce() {
    print('Hi! My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'}.');
    print('Average mark: ${calculateAverage()}');
  }
}