import 'switchable.dart';

// Абстрактный класс — базовый для всех умных устройств
// implements Switchable — все устройства обязаны уметь включаться/выключаться
abstract class Device implements Switchable {
  // Название устройства (неизменяемое)
  final String name;

  // Конструктор принимает имя устройства
  Device(this.name);

  // Базовый вывод информации об устройстве
  // Дочерние классы могут переопределить этот метод через @override
  void showInfo() {
    print('Device: $name');
  }
}
