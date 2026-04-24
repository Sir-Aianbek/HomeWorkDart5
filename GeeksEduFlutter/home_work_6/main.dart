import 'student.dart';
import 'teacher.dart';
import 'subjects.dart';

void main() {
  // Teacher example
  print('=== TEACHER ===');
  Teacher teacher = Teacher(
    fullName: 'John Brown',
    age: 40,
    isMarried: true,
    experience: 10,
  );
  teacher.introduce();
  print('');

  // First student
  print('=== STUDENT 1 ===');
  Student student1 = Student(
    fullName: 'Adam White',
    age: 17,
    isMarried: false,
    marks: {
      Subject.math: 90,
      Subject.physics: 85,
      Subject.english: 92,
      Subject.history: 88,
    },
  );
  student1.introduce();
  student1.showMarks();
  print('');

  // Second student
  print('=== STUDENT 2 ===');
  Student student2 = Student(
    fullName: 'Emma Wilson',
    age: 16,
    isMarried: false,
    marks: {
      Subject.math: 78,
      Subject.physics: 82,
      Subject.english: 95,
      Subject.history: 91,
    },
  );
  student2.introduce();
  student2.showMarks();
}
