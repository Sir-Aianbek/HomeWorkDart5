class Person {
  String fullName;
  int age;
  bool isMarried;

  Person({
    required this.fullName,
    required this.age,
    required this.isMarried,
  });

  void introduce() {
    print('Hi! My name is $fullName. I am $age years old. Married: ${isMarried ? 'Yes' : 'No'}.');
  }
}